# Digital Ocean Provider Config
provider "digitalocean" {} # Env variable

resource "digitalocean_ssh_key" "default" {
	name = "jfn cluster"
	public_key = "${file("${var.ssh_public_key}")}"
}

# Create a droplet in SF
resource "digitalocean_droplet" "jfn" {
  count = "${var.count}"

  image = "${var.image}"
  name = "${var.name}-${count.index + 1}"
  region = "${var.region}"
  size = "${var.size}"

  ssh_keys = ["${digitalocean_ssh_key.default.fingerprint}"]
}

output "web_ip" {
	value="${digitalocean_droplet.jfn.*.ipv4_address}"
}
