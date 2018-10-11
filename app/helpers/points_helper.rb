module PointsHelper
  def form_title
    @p.new_record? ? "Registrar Nuevo Punto de Venta" : "Modificar Punto de Venta"
  end
end
