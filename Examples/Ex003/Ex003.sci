f = figure();

// LaTeX
h1 = uicontrol(f, "style", "pushbutton", "string", "$x^2$");

// MathML
h2=uicontrol(f, "style", "pushbutton", "string", "<msup><mi>x</mi><mn>2</mn></msup>");
h2.Position = h1.Position + [50, 0, 0, 0];

// Text
h1 = uicontrol(f, "Style", "text", 'position', [100 100 300 100], "string", "$\Gamma(s)=\int_0^\infty t^{s-1}\mathrm{e}^{-t}\,\mathrm{d}t$");
// If it is too little
h1.fontsize = 20


// HTML
h3 = uicontrol(f, "Style", "text", 'position', [100 300 300 100], "string", "<html><h1>This is a Heading</h1> <p>This is a paragraph. first line<br>second line </p></html>");
