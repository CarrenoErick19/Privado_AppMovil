package com.example.examen_prueba3

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import com.google.firebase.database.FirebaseDatabase

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val insertobtn: Button = findViewById(R.id.btninserto)
        val muestrobtn: Button = findViewById(R.id.btnmostrar)
        val insertbtn: Button = findViewById(R.id.btninserto)

        val nombre: EditText = findViewById(R.id.editmetodo)
        val credito: EditText = findViewById(R.id.editcredito)
        val metodologia: EditText = findViewById(R.id.editmetodo)

        val databaseFacultad = FirebaseDatabase.getInstance().getReference();

        insertobtn.setOnClickListener(view)







    }
}