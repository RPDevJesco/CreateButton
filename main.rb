class Button
  attr_accessor :outputs, :inputs

  def DisplayButton(x, y, text)
    button_border = [x, y, 150, 150, 0, 0, 128]
    button_label = [x + 50, y + 75, text]
    outputs.borders << button_border
    outputs.labels << button_label

    if inputs.mouse.click
      if inputs.mouse.click.point.inside_rect? button_border
        outputs.labels << [200, 300, "Clicked"]
      end
    end
  end
end

def tick args
  $button = Button.new
  $button.outputs = args.outputs
  $button.inputs = args.inputs
  $button.DisplayButton(500, 400, "Click")
end