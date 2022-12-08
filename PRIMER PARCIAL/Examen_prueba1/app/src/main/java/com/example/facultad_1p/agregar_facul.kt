package com.example.facultad_1p

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import com.google.firebase.database.ktx.database
import com.google.firebase.ktx.Firebase

class agregar_facul : AppCompatActivity() {

    private val database = Firebase.database

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_agregar_facul)

        val myRef = database.getReference("facultad")

        val nombre: EditText = findViewById(R.id.nameEditText)
        val creditos: EditText = findViewById(R.id.creditoEditText)
        val modalidad: EditText = findViewById(R.id.metodologiaEditText)
        val url: EditText = findViewById(R.id.metodologiaEditText)
        val saveButton: Button = findViewById(R.id.button)

        saveButton.setOnClickListener { v ->
            val facultad = Facultad(nombre.toString(), creditos.toString(), modalidad.toString(), url.toString())
            myRef.child(myRef.push().key.toString()).setValue(facultad)
            finish()
        }
    }
}