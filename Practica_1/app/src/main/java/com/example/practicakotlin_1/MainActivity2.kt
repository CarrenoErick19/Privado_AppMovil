package com.example.practicakotlin_1

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button

class MainActivity2 : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main2)
        //Permitir el cambio de interfaz a usuario mediante boton
        val btn: Button = findViewById(R.id.button2)
        btn.setOnClickListener{

            val intent: Intent = Intent(this, reg_usuario:: class.java)
            startActivity(intent)
        }
    }
}