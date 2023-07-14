
  
state =
A: [
  [1,5,4,3],
  [6,7,8,4],
  [8,7,8,3],
  [7,5,1,6]
]
  # A: [
  #   [26, 27, 28, 29, 30, 31, 32, 33, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13],
  #   [27, 28, 29, 30, 31, 32, 33, 34, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14],
  #   [28, 29, 30, 31, 32, 33, 34, 35, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 99, 20, 19, 18, 17, 16, 15],
  #   [29, 30, 31, 32, 33, 34, 35, 36, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16],
  #   [30, 31, 32, 33, 34, 35, 36, 37, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17],
  #   [99, 32, 33, 34, 35, 36, 37, 38, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18],
  #   [32, 33, 34, 35, 36, 37, 38, 39, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19],
  #   [33, 34, 35, 36, 37, 99, 39, 40, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20],
  #   [34, 35, 36, 37, 38, 39, 40, 41, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21],
  #   [35, 36, 37, 38, 39, 40, 41, 42, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22],
  #   [36, 37, 38, 39, 40, 41, 42, 43, 44, 43, 42, 41, 40, 39, 38, 37, 99, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23],
  #   [37, 38, 39, 40, 41, 42, 43, 44, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24],
  #   [38, 39, 40, 41, 42, 43, 44, 45, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25],
  #   [39, 40, 41, 42, 43, 44, 45, 46, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 99, 32, 31, 30, 29, 28, 27, 26],
  #   [40, 41, 42, 43, 44, 45, 46, 47, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27],
  #   [41, 42, 43, 44, 45, 46, 47, 48, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28],
  #   [99, 43, 44, 45, 46, 47, 48, 49, 50, 49, 48, 47, 99, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29],
  #   [41, 42, 43, 44, 45, 46, 47, 48, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28],
  #   [40, 41, 42, 43, 44, 45, 46, 47, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27],
  #   [39, 40, 41, 42, 43, 44, 45, 46, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26],
  # ]

# Find a peak in a two dimensional array.
# Input: 2D integer array A, subarray indices r, witness w
find_peak_2D = (A, r = null, w = null) ->
  if r == null
    r = [0, 0, A[0].length - 1, A.length - 1]
  [px, py, qx, qy] = r
  [wx, wy] = (if w? then w else [null, null])
  if (px == qx) and (py == qy)
    yield (line: Line.done, peak: [px, py], r:r, msg:"Found Peak!") # base case
  else
    yield (line: Line.not_done, r:r, w:w, msg:"Looking for a peak in the red region...")
    if qx - px > qy - py      # larger dimension in x
      c = (px + qx + 1) // 2  # center
      yield (line: Line.find_max_x, r:r, w:w, cx:c, msg:"Search Left/Right Boundary for Max")
      for x in [c - 1, c]     # find new witness
        for y in [py .. qy]
          if wx == null or A[y][x] > A[wy][wx]
            [wx, wy] = [x, y]
      yield (line: Line.found_max_x, r:r, w:[wx, wy], cx:c, msg:"Updated Witness to Max (#{A[wy][wx]})")
      if wx < c               # new witness in right half
        qx = c - 1
      else                    # new witness in left half
        px = c      
    else                      # larger dimension in y
      c = (py + qy + 1) // 2  # center    
      yield (line: Line.find_max_y, r:r, w:w, cy:c, msg:"Search Top/Bottom Boundary for Max")
      for y in [c - 1, c]     # find new witness
        for x in [px .. qx]
          if wy == null or A[y][x] > A[wy][wx]
            [wx, wy] = [x, y]
      yield (line: Line.found_max_y, r:r, w:[wx, wy], cy:c, msg:"Updated Witness to Max (#{A[wy][wx]})")
      if wy < c               # new witness in bottom half
        qy = c - 1  
      else                    # new witness in top half
        py = c
    yield from find_peak_2D(A, [px, py, qx, qy], [wx, wy])

# find maximum width and height of all cells
biggest_bbox = (cells) ->
  bbox = (width:0, height:0)
  for row in cells
    for c in row
      cbox = c.bbox()
      bbox.width = Math.max(bbox.width, cbox.width)
      bbox.height = Math.max(bbox.height, cbox.height)
  return bbox

init_draw_matrix = (draw, A) ->
  # create text elements for numbers
  console.log(A)
  console.log(draw)
  numbers = ((draw.text("" + v) for v in row) for row in A)
  console.log(numbers)
  # determine how big each cell of A should be
  bbox = biggest_bbox(numbers)
  margin = 60
  bbox.width += margin
  bbox.height += margin
  # set the viewbox to be just the matrix
  draw.viewbox(x:0, y:0, width: bbox.width * A[0].length, height: bbox.height * A.length)
  draw.size(bbox.width * A[0].length, bbox.height * A.length)
  # create rects for highlighting current regions
  highlights =
    outside: draw.rect(0,0).fill('#ddd')
    region: draw.rect(0,0).fill('#fbb')
    divide: draw.rect(0,0).fill('#bbf')
    witness: draw.rect(bbox.width, bbox.height)
  # create rectangles for each cell
  rects = ((draw.rect(bbox.width, bbox.height) for v in row) for row in A)
  # position numbers and rectangles
  for row,yi in numbers
    for number,xi in row
      # draw rectangle for A[yi][xi]
      x = bbox.width * xi
      y = bbox.height * yi
      rect = rects[yi][xi]
      rect.fill(opacity:0)
          .stroke('#fff')
          .move(x, y)
          .after(number)
      # put number centered inside rectangle
      number.center(rect.cx(), rect.cy())
  highlights.witness_outline = draw.rect(bbox.width, bbox.height)
                                   .fill(opacity:0)
                                   .stroke('#000')
  return (bbox: bbox, highlights:highlights)

Line =
  done:0
  find_max_x:1
  found_max_x:2
  find_max_y:3
  found_max_y:4

draw_step = (draw, info, step) ->
  document.getElementById("msg").innerHTML = step.msg
  bbox = info.bbox
  outside = info.highlights.outside
  region = info.highlights.region
  divide = info.highlights.divide
  witness = info.highlights.witness
  witness_outline = info.highlights.witness_outline
  if step.line == Line.done
    # highlight peak
    region.hide()
    divide.hide()
    witness.show()
        .fill('#bbf')
        .size(bbox.width, bbox.height)
        .move(step.peak[0] * bbox.width, step.peak[1] * bbox.height)
    witness_outline.show()
        .stroke('#000')
        .move(witness.x(), witness.y())
    outside.show()
        .move(witness.x() - bbox.width, witness.y() - bbox.height)
        .size(witness.width() + 2*bbox.width, witness.height() + 2*bbox.height)
  else 
    # highlight recursived-on region
    [px, py, qx, qy] = step.r
    region.show()
        .move(px * bbox.width, py * bbox.height)
        .size((qx-px+1) * bbox.width, (qy-py+1) * bbox.height)
    outside.show()
        .move(region.x() - bbox.width, region.y() - bbox.height)
        .size(region.width() + 2*bbox.width, region.height() + 2*bbox.height)
    # highlight boundary between two halves
    if step.line == Line.find_max_x or step.line == Line.found_max_x
        # x in [c - 1, c], y in [py .. qy + 1]
        divide.show()
            .move((step.cx-1) * bbox.width, py * bbox.height)
            .size(2 * bbox.width, (qy-py+1) * bbox.height)
    else if step.line == Line.find_max_y or step.line == Line.found_max_y
        #y in [c - 1, c], x in [px .. qx + 1]
        divide.show()
            .move px * bbox.width, (step.cy-1) * bbox.height
            .size (qx-px+1) * bbox.width, 2 * bbox.height
    else
      divide.hide()
    # highlight current witness
    if step.w?
      wcolor = switch step.line
        when Line.not_done then '#bbf'
        when Line.find_max_x then '#bbf'
        when Line.find_max_y then '#bbf'
        when Line.found_max_x then '#88f'
        when Line.found_max_y then '#88f'
      witness.show()
          .fill(wcolor)
          .size(bbox.width, bbox.height)
          .move(step.w[0] * bbox.width, step.w[1] * bbox.height)
      witness_outline.show()
        .move(witness.x(), witness.y())
    else
      witness.hide()
      witness_outline.hide()
  true

main = () ->
  state.draw = SVG 'drawing'
  state.draw_info = init_draw_matrix(state.draw, state.A)
  console.log(state)
  state.steps = (s for s from find_peak_2D(state.A))
  console.log(state)
  state.t = 0
  draw_step(state.draw, state.draw_info, state.steps[state.t])

window.click_next = () ->
  if state.t + 1 < state.steps.length
    state.t++
    draw_step(state.draw, state.draw_info, state.steps[state.t])

window.click_prev = () ->
  if state.t > 0
    state.t--
    draw_step(state.draw, state.draw_info, state.steps[state.t])

SVG.on(document, 'DOMContentLoaded', main)