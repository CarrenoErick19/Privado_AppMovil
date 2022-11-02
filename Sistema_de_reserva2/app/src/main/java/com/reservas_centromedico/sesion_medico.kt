package com.reservas_centromedico

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button

class sesion_medico : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_sesion_medico)

        //Regresar a pantalla principal luego de presionar salir
        val btn: Button = findViewById(R.id.button11 )
        btn.setOnClickListener{
            //Redirigir a la pantalla principal
            val intent: Intent = Intent(this, main_screen:: class.java)
            startActivity(intent)
            finish()
        }
        //Boton modificar datos medico
        val btn2: Button = findViewById(R.id.button9)
        btn2.setOnClickListener{
            val intent: Intent = Intent(this, mod_datamedico:: class.java)
            startActivity(intent)
            finish()
        }
    }
    //Asignar que el boton atras regrese a la pantalla principal
    override fun onBackPressed() {
        startActivity(Intent(this,main_screen::class.java))
        finish()
    }
}