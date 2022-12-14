package com.example.firebasekotlincrud

import android.os.Bundle
import android.util.Log
import androidx.appcompat.app.AppCompatActivity
import com.bumptech.glide.Glide
import com.google.firebase.database.DataSnapshot
import com.google.firebase.database.DatabaseError
import com.google.firebase.database.ValueEventListener
import com.google.firebase.database.ktx.database
import com.google.firebase.ktx.Firebase
//import kotlinx.android.synthetic.main.activity_agregar_facul.metodologiaTextView
//import kotlinx.android.synthetic.main.activity_add.nameTextView
import kotlinx.android.synthetic.main.activity_videogame_detail.*

class VideogameDetail : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_videogame_detail)

        val key = intent.getStringExtra("key")
        val database = Firebase.database
        @Suppress("NULLABILITY_MISMATCH_BASED_ON_JAVA_ANNOTATIONS") val myRef = database.getReference("facultad").child(key)

        myRef.addValueEventListener(object : ValueEventListener {
            override fun onDataChange(dataSnapshot: DataSnapshot) {

                val videogame:Facultad? = dataSnapshot.getValue(Facultad::class.java)
                if (videogame != null) {
                    nameTextView.text = videogame.name.toString()
                    creditoTextView.text = videogame.credito.toString()
                    metodologiaTextView.text = videogame.metodologia.toString()
                    images(videogame.url.toString())
                }
            }

            override fun onCancelled(error: DatabaseError) {
                Log.w("TAG", "Failed to read value.", error.toException())
            }
        })


    }

    private  fun images(url: String){
        Glide.with(this)
            .load(url)
            .into(posterImgeView)

        Glide.with(this)
            .load(url)
            .into(backgroundImageView)
    }
}