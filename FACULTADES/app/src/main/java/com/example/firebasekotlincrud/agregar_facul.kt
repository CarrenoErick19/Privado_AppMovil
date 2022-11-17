package com.example.firebasekotlincrud

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.google.firebase.database.ktx.database
import com.google.firebase.ktx.Firebase
import kotlinx.android.synthetic.main.activity_agregar_facul.*

class agregar_facul : AppCompatActivity() {

    //Se instancia la base de datos Firebase
    private val database = Firebase.database

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_agregar_facul)

        //Se referencia la base de datos, CAMBIAR NOMBRE
        val myRef = database.getReference("facultad")
        //Obtenemos de los textos editables el valor de cada uno
        val name=nameEditText.text
        val credito=creditoEditText.text
        val metodologia=metodologiaEditText.text
        val url=urlEditText.text
        //Se guarda la informacion mediante el boton
        saveButton.setOnClickListener { v ->
            val videogame = Videogame(name.toString(), credito.toString(), metodologia.toString(), url.toString())
            myRef.child(myRef.push().key.toString()).setValue(videogame)
            finish()
        }
    }
}