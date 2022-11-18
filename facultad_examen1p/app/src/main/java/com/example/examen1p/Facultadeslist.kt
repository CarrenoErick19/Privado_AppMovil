package com.example.examen1p

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.google.firebase.database.*
import java.util.ArrayList

class Facultadeslist : AppCompatActivity() {

    private lateinit var databaseReference: DatabaseReference
    private lateinit var recyclerView: RecyclerView
    private lateinit var list: ArrayList<Facultad>

    override fun onBackPressed() {
        super.onBackPressed()
        startActivity(Intent(this@Facultadeslist, MainActivity::class.java))
        finish()
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_facultadeslist)

        recyclerView = findViewById(R.id.recycleview)
        recyclerView.setLayoutManager(LinearLayoutManager(this))
        recyclerView.setHasFixedSize(true)

        list = arrayListOf<Facultad>()
        getFacultadData()
    }

    private fun getFacultadData() {
        databaseReference = FirebaseDatabase.getInstance().getReference("nombre")

        databaseReference.addValueEventListener(object : ValueEventListener {

            override fun onDataChange(snapshot: DataSnapshot) {

                if(snapshot.exists()){
                    for (FacultadSnapshot in snapshot.children){

                        val facultad = FacultadSnapshot.getValue(Facultad::class.java)
                        list.add(facultad!!)

                    }

                    recyclerView.adapter = MyAdapter(list)
                }
            }

            override fun onCancelled(error: DatabaseError) {
                TODO("Not yet implemented")
            }

        })
    }
}