package com.example.examen1p

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.EditText
import android.widget.Toast
import com.google.firebase.database.DatabaseReference
import com.google.firebase.database.FirebaseDatabase

class MainActivity : AppCompatActivity() {

    lateinit var insertobtn: Button
    lateinit var muestrobtn: Button
    var nombref: EditText? = null
    var creditof: EditText? = null
    var metodologiaf: EditText? = null
    var urlimagenf: EditText? = null
    var databaseFacultad: DatabaseReference? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        insertobtn = findViewById(R.id.btninserto)
        muestrobtn = findViewById(R.id.btnmostrar)
        nombref = findViewById(R.id.editname)
        creditof = findViewById(R.id.editcredito)
        metodologiaf = findViewById(R.id.editmetodo)
        urlimagenf = findViewById(R.id.urlimage)
        databaseFacultad = FirebaseDatabase.getInstance().reference
        insertobtn.setOnClickListener(View.OnClickListener { InsertData() })
        muestrobtn.setOnClickListener(View.OnClickListener {
            startActivity(Intent(this@MainActivity, Facultadeslist::class.java))
            finish()
        })

    }
    private fun InsertData() {
        val nombre = nombref!!.text.toString()
        val credito = creditof!!.text.toString()
        val metodologia = metodologiaf!!.text.toString()
        val urlimagen = urlimagenf!!.text.toString()
        val id = databaseFacultad!!.push().key
        val facultad = Facultad(nombre, credito, metodologia, urlimagen)
        databaseFacultad!!.child("nombre").child(id!!).setValue(facultad)
            .addOnCompleteListener { task ->
                if (task.isSuccessful) {
                    Toast.makeText(
                        this@MainActivity,
                        "DATOS DE FACULTAD INSERTADOS",
                        Toast.LENGTH_SHORT
                    ).show()
                }
            }
    }
}