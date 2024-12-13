function createXMLDocument() {
    const documentImplementation = document.implementation;
    const doc = documentImplementation.createDocument(null, "autoParts", null);

    function createElementWithText(name, text) {
        const element = doc.createElement(name);
        element.textContent = text;
        return element;
    }

    const autoPartsElement = doc.documentElement;
    autoPartsElement.setAttribute("xmlns:xsi", "http://www.w3.org/2001/XMLSchema-instance");
    autoPartsElement.setAttribute("xsi:noNamespaceSchemaLocation", "../../XMLSchema/Schema.xsd");

    const storageElement = doc.createElement("storage");
    const partsElement = doc.createElement("parts");
    partsElement.setAttribute("code", "P001");
    partsElement.setAttribute("origin", "Германия");
    partsElement.setAttribute("warranty", "5 години");
    partsElement.setAttribute("manufacturerDate", "2022-01-15");

    partsElement.appendChild(createElementWithText("name", "Маслен филтър"));
    partsElement.appendChild(createElementWithText("category", "Филтри"));
    partsElement.appendChild(createElementWithText("brand", "Bosch"));
    partsElement.appendChild(createElementWithText("price", "25.50"));
    partsElement.appendChild(createElementWithText("quantity", "50"));
    partsElement.appendChild(createElementWithText("condition", "New"));

    const dimensionsElement = doc.createElement("dimensions");
    dimensionsElement.appendChild(createElementWithText("length", "10.5"));
    dimensionsElement.appendChild(createElementWithText("width", "8.2"));
    dimensionsElement.appendChild(createElementWithText("height", "7.0"));
    partsElement.appendChild(dimensionsElement);

    storageElement.appendChild(partsElement);
    autoPartsElement.appendChild(storageElement);

    const suppliersElement = doc.createElement("suppliers");
    const supplierElement = doc.createElement("supplier");
    supplierElement.setAttribute("supplierID", "S001");

    supplierElement.appendChild(createElementWithText("supplierName", "Auto Parts Ltd"));
    supplierElement.appendChild(createElementWithText("phone", "+44 123 456 789"));
    supplierElement.appendChild(createElementWithText("email", "info@autoparts.com"));
    supplierElement.appendChild(createElementWithText("address", "Лондон, Industrial Road 5"));
    supplierElement.appendChild(createElementWithText("location", "Англия"));

    suppliersElement.appendChild(supplierElement);
    autoPartsElement.appendChild(suppliersElement);

    return doc;
}