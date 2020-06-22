import math
import cairo


class PyGenomicPlot():
    
    def __init__(self, surface_path, WIDTH=1000, HEIGHT=500):
        self.WIDTH, self.HEIGHT = WIDTH, HEIGHT
        self.MARGIN = 50
        self.surface = cairo.SVGSurface(surface_path, WIDTH, HEIGHT)
        self.ctx = cairo.Context(self.surface)
        self.ctx.rectangle(0, 0, WIDTH, HEIGHT)
        self.ctx.set_source_rgb(1, 1, 1)
        self.ctx.fill()
        self.track = 0

    def add_gene(self, utrs, exons):
        self.track += 1
        self.ctx.move_to(self.MARGIN, self.track * 100)
        self.ctx.line_to(self.WIDTH - self.MARGIN, self.track * 100)
        self.ctx.set_source_rgb(0, 0, 0)
        self.ctx.set_line_width(1)
        self.ctx.stroke()

        return

    def output_png(self, png_path):
        self.surface.write_to_png(png_path)


plotter = PyGenomicPlot(surface_path='output.svg')
plotter.add_gene(0, 0)
plotter.output_png('output.png')
    