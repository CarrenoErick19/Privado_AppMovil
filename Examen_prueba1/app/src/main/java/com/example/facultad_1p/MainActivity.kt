package com.example.facultad_1p

import android.content.Intent
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.ItemTouchHelper
import androidx.recyclerview.widget.RecyclerView
import com.bumptech.glide.Glide
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import com.google.firebase.database.DataSnapshot
import com.google.firebase.database.DatabaseError
import com.google.firebase.database.ValueEventListener
import com.google.firebase.database.ktx.database
import com.google.firebase.database.ktx.getValue
import com.google.firebase.ktx.Firebase

class MainActivity : AppCompatActivity() {

    private val database = Firebase.database
    private lateinit var messagesListener: ValueEventListener
    private val listFacultad:MutableList<Facultad> = ArrayList()
    val myRef = database.getReference("facultad")

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        //Inicializar que el boton flotante ejecute la pantalla de agregar facultad
        val boton: Button = findViewById(R.id.newFloatingActionButton)
        boton.setOnClickListener { v ->
            val intent = Intent(this, agregar_facul::class.java)
            v.context.startActivity(intent)
        }
        //Limpiar lista de facultades
        listFacultad.clear()
        //Inicializar componentes del Recycler View
        val facultadesRecyclerView: RecyclerView = findViewById(R.id.facultadRecyclerView)
        setupRecyclerView(facultadesRecyclerView)
    }

    private fun setupRecyclerView(recyclerView: RecyclerView) {

        messagesListener = object : ValueEventListener {

            override fun onDataChange(dataSnapshot: DataSnapshot) {
                listFacultad.clear()
                //Obtener los datos relevantes de la facultad mediante un foreach
                dataSnapshot.children.forEach { child ->
                    val videogame: Facultad? =
                        Facultad(child.child("nombre").getValue<String>(),
                            child.child("creditos").getValue<String>(),
                            child.child("metodologia").getValue<String>(),
                            child.child("url").getValue<String>(),
                            child.key)
                    videogame?.let { listFacultad.add(it) }
                }//Listar el contenido en un recycler view mediante un adapter
                recyclerView.adapter = FacultadViewAdapter(listFacultad)
            }

            override fun onCancelled(error: DatabaseError) {
                Log.e("TAG", "messages:onCancelled: ${error.message}")
            }
        }
        myRef.addValueEventListener(messagesListener)
    }
    class FacultadViewAdapter(private val values: List<Facultad>) :
        RecyclerView.Adapter<FacultadViewAdapter.ViewHolder>() {

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
            val view = LayoutInflater.from(parent.context)
                .inflate(R.layout.facultad_rev, parent, false)
            return ViewHolder(view)
        }
        //Se recuperan los datos de la lista de facultades ingresadas mediante su posicion
        override fun onBindViewHolder(holder: ViewHolder, position: Int) {
            val facultad = values[position]
            holder.mNombreTextView.text = facultad.nombre
            holder.mCreditosTextView.text = facultad.creditos
            holder.mMetodologiaTextView.text = facultad.metodologia
            holder.mPosterImgeView?.let {
                Glide.with(holder.itemView.context)
                    .load(facultad.url)
                    .into(it)
            }
            //Al seleccionar un item mostrara los detalles del mismo
            holder.itemView.setOnClickListener { v ->
                val intent = Intent(v.context, facul_detalle::class.java).apply {
                    putExtra("key", facultad.key)
                }
                v.context.startActivity(intent)
            }

        }

        override fun getItemCount() = values.size

        inner class ViewHolder(view: View) : RecyclerView.ViewHolder(view) {
            val mNombreTextView: TextView
            init {
                mNombreTextView = view.findViewById(R.id.nombreTextView)
            }
            val mCreditosTextView: TextView
            init {
                mCreditosTextView = view.findViewById(R.id.creditosTextView)
            }
            val mMetodologiaTextView: TextView
            init {
                mMetodologiaTextView = view.findViewById(R.id.metodologiaTextView)
            }
            val mPosterImgeView: ImageView?
            init {
                mPosterImgeView = view.findViewById(R.id.posterImgeView)
            }
        }
    }
}