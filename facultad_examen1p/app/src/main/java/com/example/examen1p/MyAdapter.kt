package com.example.examen1p

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.bumptech.glide.Glide
import java.util.ArrayList

class MyAdapter(private val list: ArrayList<Facultad>): RecyclerView.Adapter<MyAdapter.MyViewHolder>() {
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): MyViewHolder {
        val itemView = LayoutInflater.from(parent.context).inflate(R.layout.facultadentry, parent, false)
        return MyViewHolder(itemView)
    }

    override fun onBindViewHolder(holder: MyViewHolder, position: Int) {
        val facultad = list[position]
        holder.nombre.text = facultad.nombre
        holder.creditos.text = facultad.creditos
        holder.metodologia.text = facultad.metodologia
        holder.urlimagen?.let {
            Glide.with(holder.itemView.context)
                .load(facultad.urlima)
                .into(it)
        }
    }

    override fun getItemCount(): Int {
        return list.size
    }

    class MyViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
        var nombre: TextView
        var creditos: TextView
        var metodologia: TextView
        var urlimagen: ImageView?

        init {
            nombre = itemView.findViewById(R.id.textname)
            creditos = itemView.findViewById(R.id.textcreditos)
            metodologia = itemView.findViewById(R.id.textmetodologia)
            urlimagen = itemView.findViewById(R.id.urlimage)
        }
    }
}