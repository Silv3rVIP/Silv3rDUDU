import xml.etree.ElementTree as ET

tree = ET.parse('dsp_app/dsp_ui.xml')
root = tree.getroot()

print("Clickable / Interactive nodes in DSP:")
for node in root.iter('node'):
    clickable = node.attrib.get('clickable')
    res_id = node.attrib.get('resource-id')
    bounds = node.attrib.get('bounds')
    text = node.attrib.get('text')
    cls = node.attrib.get('class')
    if clickable == 'true' or text or 'btn' in res_id.lower() or 'setting' in res_id.lower():
        print(f"ID: {res_id:35} | Text: {text:15} | Bounds: {bounds}")
