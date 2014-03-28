module ApplicationHelper
  def menu_principal
    menu = %w(cliente qualificacao restaurante)
    menu_principal = "<ul>"
    menu.each do |item|
      menu_principal << "<li>" + link_to(item, :controller => item.pluralize) + "</li>"
    end
    menu_principal << "</ul>"
    raw menu_principal
  end

  def valor_formatado(valor)
    number_to_currency valor, :unit => "R$", :separator => ",", :delimiter => "."
  end

  def comentarios(comentavel)
    comentarios = "<div id='comentarios'>"
    comentarios << "<h3> Comentários </h3>"

    comentarios << render(:partial => "comentarios/comentario", :collection => comentavel.comentarios) unless comentavel.comentarios.empty?

    comentarios << "</div>"
    raw comentarios
  end

  def novo_comentario(comentavel)
    raw render(:partial => "comentarios/novo_comentario", :locals => {:comentavel => comentavel})
  end
end
