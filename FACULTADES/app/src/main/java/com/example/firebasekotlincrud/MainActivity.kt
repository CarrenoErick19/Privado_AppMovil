package com.example.firebasekotlincrud

import android.content.Intent
import android.os.Bundle
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.ItemTouchHelper
import androidx.recyclerview.widget.RecyclerView
import com.bumptech.glide.Glide
import com.google.firebase.database.DataSnapshot
import com.google.firebase.database.DatabaseError
import com.google.firebase.database.ValueEventListener
import com.google.firebase.database.ktx.database
import com.google.firebase.database.ktx.getValue
import com.google.firebase.ktx.Firebase
import kotlinx.android.synthetic.main.activity_main.*
import kotlinx.android.synthetic.main.videogame_content.view.*

class MainActivity : AppCompatActivity() {

    private val database = Firebase.database
    private lateinit var messagesListener: ValueEventListener
    private val listVideogames:MutableList<Facultad> = ArrayList()
    val myRef = database.getReference("facultad")

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        //Boton flotante para agregar una nueva facultad
        newFloatingActionButton.setOnClickListener { v ->
            val intent = Intent(this, agregar_facul::class.java)
            v.context.startActivity(intent)
        }

        //Limpiar la lista de los videojuegos
        listVideogames.clear()
        //inicializar los componentes del diseño, en este caso el recycler view
        setupRecyclerView(videogameRecyclerView)

    }

    private fun setupRecyclerView(recyclerView: RecyclerView) {

        messagesListener = object : ValueEventListener {
            //Obtener los datos relevantes de la facultad mediante un foreach
            override fun onDataChange(dataSnapshot: DataSnapshot) {
                listVideogames.clear()
                dataSnapshot.children.forEach { child ->
                    val facultad: Facultad? =
                            Facultad(child.child("name").getValue<String>(),
                                    child.child("credito").getValue<String>(),
                                    child.child("metodologia").getValue<String>(),
                                    child.child("url").getValue<String>(),
                                    child.key)
                    facultad?.let { listVideogames.add(it) }
                } //Listar el contenido en un recycler view mediante un adapter
                recyclerView.adapter = VideogameViewAdapter(listVideogames)
            }

            override fun onCancelled(error: DatabaseError) {
                Log.e("TAG", "messages:onCancelled: ${error.message}")
            }
        }
        myRef.addValueEventListener(messagesListener)

        //deleteSwipe(recyclerView)
    }

    class VideogameViewAdapter(private val values: List<Facultad>) :
        RecyclerView.Adapter<VideogameViewAdapter.ViewHolder>() {

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
            val view = LayoutInflater.from(parent.context)
                .inflate(R.layout.videogame_content, parent, false)
            return ViewHolder(view)
        }
        //Se recuperan los datos de la lista a traves de la posicion
        override fun onBindViewHolder(holder: ViewHolder, position: Int) {
            val videogame = values[position]
            holder.mNameTextView.text = videogame.name
            holder.mCreditoTextView.text = videogame.credito
            holder.mMetodologiaTextView.text = videogame.metodologia
            holder.mPosterImgeView?.let {
                Glide.with(holder.itemView.context)
                    .load(videogame.url)
                    .into(it)
            }
            //Al seleccionar un item, mostrara los detalles del mismo
            holder.itemView.setOnClickListener { v ->
                val intent = Intent(v.context, VideogameDetail::class.java).apply {
                    putExtra("key", videogame.key) //Llave primaria a enviar
                }
                v.context.startActivity(intent)
            }
            //ELIMINAR, AL MANTENER SE EDITA
            /*holder.itemView.setOnLongClickListener{ v ->
                val intent = Intent(v.context, EditActivity::class.java).apply {
                    putExtra("key", videogame.key)
                }
                v.context.startActivity(intent)
                true
            }*/

        }

        override fun getItemCount() = values.size

        inner class ViewHolder(view: View) : RecyclerView.ViewHolder(view) {
            val mNameTextView: TextView = view.nameTextView
            val mCreditoTextView: TextView = view.creditoTextView
            val mMetodologiaTextView: TextView = view.metodologiaTextView
            val mPosterImgeView: ImageView? = view.posterImgeView
        }
    }
    //ELIMINAR ESTO, FUNCION PARA ELIMINAR AL DESLIZAR A LA DERECHA
    /*private fun deleteSwipe(recyclerView: RecyclerView){
        val touchHelperCallback: ItemTouchHelper.SimpleCallback = object : ItemTouchHelper.SimpleCallback(0, ItemTouchHelper.LEFT or ItemTouchHelper.RIGHT) {
            override fun onMove(recyclerView: RecyclerView, viewHolder: RecyclerView.ViewHolder, target: RecyclerView.ViewHolder): Boolean {
                return false
            }

            override fun onSwiped(viewHolder: RecyclerView.ViewHolder, direction: Int) {
                listVideogames.get(viewHolder.adapterPosition).key?.let { myRef.child(it).setValue(null) }
                listVideogames.removeAt(viewHolder.adapterPosition)
                recyclerView.adapter?.notifyItemRemoved(viewHolder.adapterPosition)
                recyclerView.adapter?.notifyDataSetChanged()
            }
        }
        val itemTouchHelper = ItemTouchHelper(touchHelperCallback)
        itemTouchHelper.attachToRecyclerView(recyclerView)
    }*/

}

