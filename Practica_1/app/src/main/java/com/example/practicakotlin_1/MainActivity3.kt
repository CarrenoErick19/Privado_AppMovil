package com.example.practicakotlin_1

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button

class MainActivity3 : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main3)
        //Permitir el cambio de interfaz a usuario mediante boton
        val btn: Button = findViewById(R.id.button5)
        btn.setOnClickListener{

            val intent: Intent = Intent(this, MainActivity2:: class.java)
            startActivity(intent)
        }
    }
}