package com.reservas_centromedico

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button

class sesion_admin : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_sesion_admin)

        //Si el administrador presiona salir regresa a pantalla principal
        val btn: Button = findViewById(R.id.button20)
        btn.setOnClickListener{

            val intent: Intent = Intent(this, main_screen:: class.java)
            startActivity(intent)
            finish()
        }
        //Si el administrador presiona REGRESAR, regresa a pantalla login admin
        val btn2: Button = findViewById(R.id.button19)
        btn2.setOnClickListener{

            val intent: Intent = Intent(this, inicio_admin:: class.java)
            startActivity(intent)
            finish()
        }
        //Boton registrar medico
        val btn3: Button = findViewById(R.id.button13)
        btn3.setOnClickListener{

            val intent: Intent = Intent(this, Lreg_medico:: class.java)
            startActivity(intent)
            finish()
        }
        //Boton modificar medico
        val btn4: Button = findViewById(R.id.button15)
        btn4.setOnClickListener{

            val intent: Intent = Intent(this, admin_modmedico:: class.java)
            startActivity(intent)
            finish()
        }
        //Boton modificar paciente
        val btn5: Button = findViewById(R.id.button16)
        btn5.setOnClickListener{

            val intent: Intent = Intent(this, admin_modpaciente:: class.java)
            startActivity(intent)
            finish()
        }
    }
    //Asignar que el boton atras regrese a la pantalla login admin
    override fun onBackPressed() {
        startActivity(Intent(this,inicio_admin::class.java))
        finish()
    }
}