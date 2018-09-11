module PointsHelper
  def form_title
    @p.new_record? ? "Registrar Punto de Venta" : "Editar Punto de Venta"
  end
end
