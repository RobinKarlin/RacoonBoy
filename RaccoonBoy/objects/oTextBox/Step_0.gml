//Destroy the text window after last letter in text is drawn and timer has run out

if Print >= Text {
	DestroyTimer--
}

if DestroyTimer <= 0 {
	instance_destroy()
}