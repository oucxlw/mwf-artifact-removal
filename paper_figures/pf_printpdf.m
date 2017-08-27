% Print generated figure to pdf.
%
% INPUTS:
%   h       figure handle
%   name    pdf file name
%
% Author: Ben Somers, KU Leuven, Department of Neurosciences, ExpORL
% Correspondence: ben.somers@med.kuleuven.be

function pf_printpdf(h, name)

if ~strcmp(h.Renderer,'painters')
    h.Renderer = 'Painters';
    warning('Setting figure renderer to Painters for pdf vector graphics')
end

set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(h, name,'-dpdf','-r0')
end
