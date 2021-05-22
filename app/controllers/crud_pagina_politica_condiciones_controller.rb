class CrudPaginaPoliticaCondicionesController < ApplicationController

  def crud_alergenos
    @alergenos = Alergeno.all()
  end

  def crud_politica_condiciones
  end

  def editarAlerg

    @alergenos = Alergeno.find(params[:id])

    if params[:imgSmall].present?
      uploaded_file = params[:imgSmall]
 
      # Eliminamos el archivo (imagen) anterior 
      simg = Alergeno.where(:id => @alergenos).pluck(:imgSmall)    
      imgeliminar = Rails.root.join('app', 'assets/images', simg.join)
      File.delete(Rails.root + imgeliminar) if File.exist?(imgeliminar)
 
      # Subimos el nuevo archivo (imagen)
      imgPeq = 'politicaCondiciones/Alergenos3' + uploaded_file.original_filename
      File.open(Rails.root.join('app', 'assets/images', imgPeq), 'wb') do |file|
          file.write(uploaded_file.read)
      end
    end 
    if params[:imgMedium].present?
      uploaded_file = params[:imgMedium]
 
      # Eliminamos el archivo (imagen) anterior 
      simg = Alergeno.where(:id => @alergenos).pluck(:imgMedium)    
      imgeliminar = Rails.root.join('app', 'assets/images', simg.join)
      File.delete(Rails.root + imgeliminar) if File.exist?(imgeliminar)
 
      # Subimos el nuevo archivo (imagen)
      imgMed = 'politicaCondiciones/Alergenos2' + uploaded_file.original_filename
      File.open(Rails.root.join('app', 'assets/images', imgMed), 'wb') do |file|
          file.write(uploaded_file.read)
      end
    end 
    if params[:imgLarge].present?
      uploaded_file = params[:imgLarge]
 
      # Eliminamos el archivo (imagen) anterior 
      simg = Alergeno.where(:id => @alergenos).pluck(:imgLarge)    
      imgeliminar = Rails.root.join('app', 'assets/images', simg.join)
      File.delete(Rails.root + imgeliminar) if File.exist?(imgeliminar)
 
      # Subimos el nuevo archivo (imagen)
      imgGran = 'politicaCondiciones/Alergenos1' + uploaded_file.original_filename
      File.open(Rails.root.join('app', 'assets/images', imgGran), 'wb') do |file|
          file.write(uploaded_file.read)
      end
    end 

    if @alergenos.update(parametros)
      
      if params[:imgSmall].present?
        @alergenos.update_column(:imgSmall, imgPeq)
      end   
      if params[:imgMedium].present?
        @alergenos.update_column(:imgMedium, imgMed)
      end
      if params[:imgLarge].present?
        @alergenos.update_column(:imgLarge, imgGran)
      end       
 
    else
      render :edit
    end
 
      # Redireccionamos a la vista principal con mensaje 
      @ini = "/crud_pagina_politica_condiciones/crud_alergenos"
      flash[:notice] = "Actualizado Correctamente !"
      redirect_to @ini 
  end

  private
  def parametros
  	params.permit(:screenSize, :imgSmall, :imgMedium, :imgLarge)
  end

end

