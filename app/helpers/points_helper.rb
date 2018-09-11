module PointsHelper
  def form_title
    @p.new_record? ? "Registrar Información Punto de Venta" : "Modificar Información Punto de Venta"
  end
end
