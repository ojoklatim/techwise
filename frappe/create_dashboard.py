import frappe
import json

def run():
    # 1. Create Number Card for Open Projects if it doesn't exist
    card_name = "Open Projects"
    if not frappe.db.exists("Number Card", card_name):
        doc_card = frappe.get_doc({
            "doctype": "Number Card",
            "name": card_name,
            "label": card_name,
            "function": "Count",
            "document_type": "Project",
            "is_standard": 0,
            "module": "Mini Tracker",
            "filters_json": json.dumps([["Project", "status", "=", "Open"]])
        })
        doc_card.insert()
        frappe.db.commit()
        print("Number Card created!")
    else:
        print("Number Card already exists.")

    # 2. Create Workspace Dashboard
    ws_name = "Mini Tracker Dashboard"
    if frappe.db.exists("Workspace", ws_name):
        frappe.delete_doc("Workspace", ws_name)
        frappe.db.commit()
        print("Deleted old Workspace.")

    doc_ws = frappe.get_doc({
        "doctype": "Workspace",
        "name": ws_name,
        "label": ws_name,
        "title": "Mini Tracker Dashboard",
        "icon": "project",
        "category": "Modules",
        "module": "Mini Tracker",
        "public": 1,
        "sequence_id": 0,
        "is_standard": 0,
        "number_cards": [
            {
                "doctype": "Workspace Number Card",
                "number_card_name": card_name,
                "label": card_name
            }
        ],
        "shortcuts": [
            {
                "doctype": "Workspace Shortcut",
                "label": "New Project",
                "link_to": "Project",
                "type": "DocType",
                "doc_view": "New"
            }
        ]
    })
    doc_ws.insert()
    frappe.db.commit()
    print("Workspace created successfully!")
