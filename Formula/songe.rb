class Songe < Formula
  include Language::Python::Virtualenv

  desc "Local hindsight distillation for a model that sleeps"
  homepage "https://github.com/sous-labs/songe"
  # The release updater verifies the CLI wheel and pins all dependency wheels.
  url "https://files.pythonhosted.org/packages/5a/c0/9ffbfc699ec97155502bdf3eaf675659067ffc24e7bf63b7d32e0d869c5b/songe-0.1.0a4-py3-none-any.whl", using: :nounzip
  version "0.1.0a4"
  sha256 "708bf2e0899af43387fa859a89026b4960848547d33a5a3b58b74b4a48b559a7"

  depends_on "python@3.12"
  depends_on macos: :sonoma

  # BEGIN GENERATED WHEEL RESOURCES
  resource "anyio" do
    url "https://files.pythonhosted.org/packages/a9/16/7757fb84c819accc7d7e9af5291b261e4abb8627ee040f99e7d35ef2457a/anyio-4.16.0-py3-none-any.whl", using: :nounzip
    sha256 "c66ae634e0b8228396b801741beb3294326d4b6102f7bba4041c0dfb58c29026"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/64/b4/17d4b0b2a2dc85a6df63d1157e028ed19f90d4cd97c36717afef2bc2f395/attrs-26.1.0-py3-none-any.whl", using: :nounzip
    sha256 "c647aa4a12dfbad9333ca4e71fe62ddc36f4e63b2d260a37a8b83d2f043ac309"
  end

  resource "bashlex" do
    url "https://files.pythonhosted.org/packages/f4/be/6985abb1011fda8a523cfe21ed9629e397d6e06fb5bae99750402b25c95b/bashlex-0.18-py2.py3-none-any.whl", using: :nounzip
    sha256 "91d73a23a3e51711919c1c899083890cdecffc91d8c088942725ac13e9dcfffa"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/32/d1/a3652fe2c19134d0d15922177821d863cbd7e842d53a21bbe7e8e3a1b5ac/certifi-2026.10.23-py3-none-any.whl", using: :nounzip
    sha256 "e9b54de76e530bb6cf0ccd036787103acb58fd42ba930ea8bf948ddbaa2f61d1"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/31/7d/164b7ffc8624fe9efb4221bf9af485d5c1e41b9ae118045d2b6dc5457d8b/click-8.5.1-py3-none-any.whl", using: :nounzip
    sha256 "8bb5376d2006950386f8c6427613334a2acadc5f559cb80e638d00b4df957e37"
  end

  resource "gguf" do
    url "https://files.pythonhosted.org/packages/b3/bb/d71d6da82763528c2c2ed6b59a9d6142c6595545a4c448e2085d155e88c2/gguf-0.19.0-py3-none-any.whl", using: :nounzip
    sha256 "70bcd10edfe697fb2dad6e40af2234b9d8ece9a41a99761405121ebda1c3c1cd"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/04/4b/29cac41a4d98d144bf5f6d33995617b185d14b22401f75ca86f384e87ff1/h11-0.16.0-py3-none-any.whl", using: :nounzip
    sha256 "63cf8bbe7522de3bf65932fda1d9c2772064ffb3dae62d55932da54b31cb6c86"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/7e/f5/f66802a942d491edb555dd61e3a9961140fd64c90bce1eafd741609d334d/httpcore-1.0.9-py3-none-any.whl", using: :nounzip
    sha256 "2d400746a40668fc9dec9810239072b40b4484b640a8c38fd654a024c7a1bf55"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl", using: :nounzip
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end

  resource "httpx-ws" do
    url "https://files.pythonhosted.org/packages/98/f8/a6bc80313a9e93c888fa10534dfce2ad76ff86911b6f485777ce6de6a073/httpx_ws-0.9.0-py3-none-any.whl", using: :nounzip
    sha256 "71640d2fb1bf9a225775015b33cd755cfd4c5f7e21c885192fe3adc4c387b248"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/58/a2/bb081bab032533a855d44de1d56f8e8426114ff1ba5d1f07a438a0a654f8/idna-3.20-py3-none-any.whl", using: :nounzip
    sha256 "ab7ae7122974553370f0bdb919e1a960b2cd1bc1ef0276416d896db81c14582c"
  end

  resource "installer" do
    url "https://files.pythonhosted.org/packages/d7/7a/63547a792a12148882205d79e07644091d5b7690f40c2bb9d41452a8bdc2/installer-1.1.0-py3-none-any.whl", using: :nounzip
    sha256 "f55f5728ff61d3dd54dbc5a397cf3f7307cb64b180c20b72afbebf01c9e2c8a0"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/69/90/f63fb5873511e014207a475e2bb4e8b2e570d655b00ac19a9a0ca0a385ee/jsonschema-4.26.0-py3-none-any.whl", using: :nounzip
    sha256 "d489f15263b8d200f8387e64b4c3a75f06629559fb73deb8fdfb525f2dab50ce"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/41/45/1a4ed80516f02155c51f51e8cedb3c1902296743db0bbc66608a0db2814f/jsonschema_specifications-2025.9.1-py3-none-any.whl", using: :nounzip
    sha256 "98802fee3a11ee76ecaca44429fda8a41bff98b00a0f2838151b113f210cc6fe"
  end

  resource "linkify-it-py" do
    url "https://files.pythonhosted.org/packages/13/d4/1152d1c7ab42d8b908be64fd200ddc870dc9d4925e951198702084aa1a7d/linkify_it_py-2.2.0-py3-none-any.whl", using: :nounzip
    sha256 "3adc40eb5af300b2605fcfdb968c24e1d780a90f1f2221af7c15e5111e94d443"
  end

  resource "lmstudio" do
    url "https://files.pythonhosted.org/packages/b8/51/dcf7a86872a9de6529d67c68db0319b6f2afa093294d1fb8f1affcc86cc8/lmstudio-1.5.0-py3-none-any.whl", using: :nounzip
    sha256 "0b1e5a1cf013744a6ce0a80960204af5bf468dbbb2a505acb4dfb67185fffbe9"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/c9/31/5f0ac2f1a1c67423c995c731a11cd4ad05d081a2be969d74f868bdb9cc70/markdown_it_py-4.3.0-py3-none-any.whl", using: :nounzip
    sha256 "7aa1511a46c39138de78d9eba92ce47e63124d8003fc98b3a351909e04239efa"
  end

  resource "mdit-py-plugins" do
    url "https://files.pythonhosted.org/packages/4d/d3/d07e61326f150944ead0da9d0b39fb20d7fa367bbc951b10fca6bb1c7382/mdit_py_plugins-0.7.0-py3-none-any.whl", using: :nounzip
    sha256 "7f8e30403f3dd8bfe3afcdcbc6e61066d3f2e714167507b9c26eb385ec399353"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/b3/38/89ba8ad64ae25be8de66a6d463314cf1eb366222074cfda9ee839c56a4b4/mdurl-0.1.2-py3-none-any.whl", using: :nounzip
    sha256 "84008a41e51615a49fc9966191ff91509e3c40b939176e643fd50a5c2196b8f8"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/63/34/ba1c580383c9eada3711951fef0795c80b829a078d72188184bcab9dd527/packaging-26.3-py3-none-any.whl", using: :nounzip
    sha256 "d7193f7c8e4e93f444fde0262bf90af30e16fa0ad0ad44cb553c87339b23cd1c"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/7c/ae/ecbbbfd0e4343a6a521d49b3c8656fb4643dee2a4f6eaf941cf3280391a8/platformdirs-4.14.5-py3-none-any.whl", using: :nounzip
    sha256 "8e778c6fa421516f4d3369449f8df3b0e1b72c0e0005fe88e3ec772d0a14e750"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/71/46/17f022dd3e953bf20a04a028a21ec746d942f8d2af30fa0f124fa0e6a684/pygments-2.21.0-py3-none-any.whl", using: :nounzip
    sha256 "2363c69b61c4a97c838da3b130dcd6468f4848992b21a82f2a63ec34377137d9"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/2c/58/ca301544e1fa93ed4f80d724bf5b194f6e4b945841c5bfd555878eea9fcb/referencing-0.37.0-py3-none-any.whl", using: :nounzip
    sha256 "381329a9f99628c9069361716891d34ad94af76e461dcb0335825aecc7692231"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/a0/f4/c67b0b3f1b9245e8d266f0f112c500d50e5b4e83cb6f3b71b6528104182a/requests-2.34.2-py3-none-any.whl", using: :nounzip
    sha256 "2a0d60c172f83ac6ab31e4554906c0f3b3588d37b5cb939b1c061f4907e278e0"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/82/3b/64d4899d73f91ba49a8c18a8ff3f0ea8f1c1d75481760df8c68ef5235bf5/rich-15.0.0-py3-none-any.whl", using: :nounzip
    sha256 "33bd4ef74232fb73fe9279a257718407f169c09b78a87ad3d296f548e27de0bb"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/88/2e/947cfe02def9371c07cd5bf5b6b61c829e9aecb9904db02a66cfafbc1eec/starlette-1.10.0-py3-none-any.whl", using: :nounzip
    sha256 "478c0ab3b4ced6e82719849c118fa406f0278a3499c1a898cd15cd31bdc38ce4"
  end

  resource "textual" do
    url "https://files.pythonhosted.org/packages/13/f8/2a6a6ff1d07788f635493867d5a4003dfecacad16af1fdc9814d10daca3d/textual-6.12.0-py3-none-any.whl", using: :nounzip
    sha256 "cf9ea9a54d213c7736efe9fef440c7f49218d4e6ab75279afd060eded9c567ec"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/a7/03/921a3d3c75785aca9ebfbfcabfbc3a1be12e2ab5265deb026d55a5a3f83e/tqdm-4.70.1-py3-none-any.whl", using: :nounzip
    sha256 "c293e525e6fef9c20e8728fd4612df02a0aa31bb5fe91ecd93e123b1b7bffa73"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/49/d3/b8441a820a491ddfc024b0b0cf0393375b75ea13866d9c66727e54c2fc80/typing_extensions-4.16.0-py3-none-any.whl", using: :nounzip
    sha256 "481caa481374e813c1b176ada14e97f1f67a4539ce9cfeb3f350d78d6370c2e8"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/92/9d/c4e665119135114480843e7ab388fa94d8480650450e6f8e26b70d323a4c/urllib3-2.8.0-py3-none-any.whl", using: :nounzip
    sha256 "0cf3cae568d36aa9576b28dfb35f11328f1cb974ca7647d9475ebb86c75ac6e3"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/38/0c/b54a4fdd7f90a3af8b02ebc9ce6712c2c208b7926a2f7bad95c33ebbe943/uvicorn-0.54.0-py3-none-any.whl", using: :nounzip
    sha256 "505bdb0f318731d45f1f712071fc781a8981f6847a31c902c9f5e652d4f67faf"
  end

  resource "wsproto" do
    url "https://files.pythonhosted.org/packages/a4/f5/10b68b7b1544245097b2a1b8238f66f2fc6dcaeb24ba5d917f52bd2eed4f/wsproto-1.3.2-py3-none-any.whl", using: :nounzip
    sha256 "61eea322cdf56e8cc904bd3ad7573359a242ba65688716b0710a5eb12beab584"
  end

  on_macos do
    on_arm do
      resource "annotated-doc" do
        url "https://files.pythonhosted.org/packages/cd/f5/3dd85d583e55be76cd02b1fc9bbec771b12d63124b01661d9535ccf8721f/annotated_doc-0.0.6-py3-none-any.whl", using: :nounzip
        sha256 "361ca0950cc7082f53fa69e9328409f40a62c61e57e0a47e1825a08078a58a53"
      end

      resource "annotated-types" do
        url "https://files.pythonhosted.org/packages/99/91/8acff4f5e50511b911bbccb72b8628a49c68ce14148cd9f6431094859a90/annotated_types-0.8.0-py3-none-any.whl", using: :nounzip
        sha256 "f072f4d804ea359e4eaf198b1af7a8b0943881a87f31bb764f8bf219bb9419e0"
      end

      resource "charset-normalizer" do
        url "https://files.pythonhosted.org/packages/e7/c8/693809898870237d82785a03f3b2b58fe4c9f14669f84a7d4e623c92a59e/charset_normalizer-3.5.2-cp312-cp312-macosx_10_13_universal2.whl", using: :nounzip
        sha256 "ed2a239c0ea213acc1908150a3037257083c7c083128f1a4cec2ec4b97dca491"
      end

      resource "filelock" do
        url "https://files.pythonhosted.org/packages/ef/90/5d0096a325aa0f83ba7a3968bfb485b67e32c947bdf9cd0fcb4b485be718/filelock-4.2.10-py3-none-any.whl", using: :nounzip
        sha256 "9479aaeb4db20b5a53e3da28493edd24720b66b8a0b84030aa56ccdf243d6857"
      end

      resource "fsspec" do
        url "https://files.pythonhosted.org/packages/6c/c0/a98505f18594f1bce828bb159cec0fcf9860562f1a2c85913409fc8f3d9e/fsspec-2026.9.0-py3-none-any.whl", using: :nounzip
        sha256 "8dd6e646e99ea382bd85f97a45e6b526a442d79423a7dc673f1e2756d05fcb5f"
      end

      resource "hf-xet" do
        url "https://files.pythonhosted.org/packages/d4/f2/ef25e2085e92dcaeaa675331e443923aed2006f6fe2d984e15d8b8d40766/hf_xet-1.8.0-cp38-abi3-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "3e8934784425781f0f779b91044df441f3a7af4dab47375d7e3aeaecbb8eecb4"
      end

      resource "httpcore2" do
        url "https://files.pythonhosted.org/packages/af/c2/ce417c397afa5181f0e3c6ff01a4d01639414e1adef08730d97571297151/httpcore2-2.16.0-py3-none-any.whl", using: :nounzip
        sha256 "5c4358319f2602d984ad93182c9fee5160f22e9da7babdda870a5e7c4e2dc34f"
      end

      resource "httpx2" do
        url "https://files.pythonhosted.org/packages/7b/3d/2e4bc4fd1ef9770871669adb348d612a6e4786b303a23f9935b81c48dd60/httpx2-2.16.0-py3-none-any.whl", using: :nounzip
        sha256 "fd2c5d7909e8d86fe92d53020c310ca0e4e431b838c207c5754b9bbf0308d49a"
      end

      resource "huggingface-hub" do
        url "https://files.pythonhosted.org/packages/d4/55/ff47f1b082ecf5f43f4bc1e3b932d68eead171dabbbd1a92666c686301d7/huggingface_hub-2.4.0-py3-none-any.whl", using: :nounzip
        sha256 "42ecfd93ede47bdd333daebbf66a32d7bfe2e18752754fe4d2d4f98a0179d801"
      end

      resource "jinja2" do
        url "https://files.pythonhosted.org/packages/62/a1/3d680cbfd5f4b8f15abc1d571870c5fc3e594bb582bc3b64ea099db13e56/jinja2-3.1.6-py3-none-any.whl", using: :nounzip
        sha256 "85ece4451f492d0c13c5dd7c13a64681a86afae63a5f347908daf103ce6d2f67"
      end

      resource "markupsafe" do
        url "https://files.pythonhosted.org/packages/a2/f0/d6613774d86fbf6d145751d43c59875e47a6f9f17daee0aef173bd36d90e/markupsafe-3.0.4-cp312-cp312-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "0930db9bdc62d22944e10b066448bb65dc9abe9112880c7cab8da54db4284d5f"
      end

      resource "mlx" do
        url "https://files.pythonhosted.org/packages/69/b0/e726ce51e1b445e4ed08c2d0e036a01c7532f4d1a856328da546a6f883bd/mlx-0.32.4-cp312-cp312-macosx_14_0_arm64.whl", using: :nounzip
        sha256 "ff1d7be54758ea3a875b8fe54eff13bed17ad9566505e301f5d7851bf869680f"
      end

      resource "mlx-lm" do
        url "https://files.pythonhosted.org/packages/d1/4f/000eefdeb41388782b47e7f39904cf2d9e7e49a60df5e172097c358dba8e/mlx_lm-0.32.2-py3-none-any.whl", using: :nounzip
        sha256 "5c0991248cfff5872503d74f466d2532dd8cb7fb3670cb9be7a06d7305dadc04"
      end

      resource "mlx-metal" do
        url "https://files.pythonhosted.org/packages/77/24/7e5b7ed5d28abacab4577c7a8dd1fca6e9058504f5f95ae4333c09420e2e/mlx_metal-0.32.4-py3-none-macosx_14_0_arm64.whl", using: :nounzip
        sha256 "8019b2db622599267d66cc168b2f0dbf5af929790a6c3b3913e00eabc42a7947"
      end

      resource "msgspec" do
        url "https://files.pythonhosted.org/packages/fb/02/109165edaafb895668d87177972a32ade9126a54f3736123d8e44be9096d/msgspec-0.22.0-cp312-cp312-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "b60b43425a47eb9cfe987f6874e354ca7c760e58e295b4e2273ff03574df28a1"
      end

      resource "numpy" do
        url "https://files.pythonhosted.org/packages/31/2f/5ea3570fcb8ccd0882bea99436a513b2c85dad8f774a2057849130a8fb99/numpy-2.5.4-cp312-cp312-macosx_14_0_arm64.whl", using: :nounzip
        sha256 "9cb18a327b49c5c337f972b03682f6a49855525faaf3c0d3e9c96cd0fd8880a8"
      end

      resource "protobuf" do
        url "https://files.pythonhosted.org/packages/32/72/98342feb672507c8f3a69e34b4fa8961f608edba5c1a48a6f47156d92cb5/protobuf-7.36.2-cp310-abi3-macosx_10_9_universal2.whl", using: :nounzip
        sha256 "cbc70b17ee27e28894c7fee8bb04be1abead49e936bc70eb60052531eee2079e"
      end

      resource "psutil" do
        url "https://files.pythonhosted.org/packages/80/c4/f5af4c1ca8c1eeb2e92ccca14ce8effdeec651d5ab6053c589b074eda6e1/psutil-7.2.2-cp36-abi3-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "1a7b04c10f32cc88ab39cbf606e117fd74721c831c98a27dc04578deb0c16979"
      end

      resource "pydantic" do
        url "https://files.pythonhosted.org/packages/72/b8/b864503789ef5c58597d2a7b4adbee62c26440ab1e682581fc6838df8947/pydantic-2.14.3-py3-none-any.whl", using: :nounzip
        sha256 "3f7b347782ab7e4cf4c798496ae3a82787d9f21ec12676a9c564355eeef8daa8"
      end

      resource "pydantic-core" do
        url "https://files.pythonhosted.org/packages/c1/39/6618e541658d5a687a8d4962fc304350073a8f322bc4c62e8ed4c2d514d6/pydantic_core-2.50.4-cp312-cp312-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "1e20cbde2b6deb33a51d08cd168454dd9044ec7d4474056f4d98d63f51578783"
      end

      resource "pyyaml" do
        url "https://files.pythonhosted.org/packages/89/a0/6cf41a19a1f2f3feab0e9c0b74134aa2ce6849093d5517a0c550fe37a648/pyyaml-6.0.3-cp312-cp312-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "fc09d0aa354569bc501d4e787133afc08552722d3ab34836a80547331bb5d4a0"
      end

      resource "regex" do
        url "https://files.pythonhosted.org/packages/13/c6/32671781f2e61f40c76cf81df160ef5471264ba8a5f28cbd342cd4887a8c/regex-2026.11.9-cp312-cp312-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "2255e173ffb8da59f26ec3529bf7e8531320e71575b27c3fb062747eb3a12e1f"
      end

      resource "rpds-py" do
        url "https://files.pythonhosted.org/packages/90/81/ac6a0d064982251856ce009c9e1dd51a34110b3c055aa7d1aad18b4899a3/rpds_py-2026.9.1-cp312-cp312-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "e21c1429e205828ea886a2293a4a2c8e01f4c25d9893ca330e97a6cf73f52e7b"
      end

      resource "safetensors" do
        url "https://files.pythonhosted.org/packages/f5/b1/fa7c600e7dceae12e9606c7578cbc9ff1e1ed55844883ee5c92205e86226/safetensors-0.8.0-cp310-abi3-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "c80201d22cbf405b80647a60ada77bba06c8fba2da2743ba1e89cdcc39a81f25"
      end

      resource "sentencepiece" do
        url "https://files.pythonhosted.org/packages/f8/a9/8dbb891f51a80f1f47afa3d5336b165e269c4fa87f47b7fba6fc34a4a6a0/sentencepiece-0.2.3-cp312-cp312-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "9b39b16b889c9d3be4f00f1a0a4283ee81ad8af745d48023e5ab18c724019c08"
      end

      resource "shellingham" do
        url "https://files.pythonhosted.org/packages/e0/f9/0595336914c5619e5f28a1fb793285925a8cd4b432c9da0a987836c7f822/shellingham-1.5.4-py2.py3-none-any.whl", using: :nounzip
        sha256 "7ecfff8f2fd72616f7481040475a65b2bf8af90a56c89140852d1120324e8686"
      end

      resource "tokenizers" do
        url "https://files.pythonhosted.org/packages/b2/72/01e49f032bb346e5aaf06c10c74fe8aeec847173adbadd66eb7c53054bf2/tokenizers-0.23.3-cp310-abi3-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "68649e97d5b43c44c031d8d848874a6eecae8f8fe40ea989aa777a5a83aca716"
      end

      resource "transformers" do
        url "https://files.pythonhosted.org/packages/ff/bb/cc0b27a3000ddcf4903d3a26983c8b4c9a36050bbaf05675f353e8bcb08c/transformers-5.22.2-py3-none-any.whl", using: :nounzip
        sha256 "829c2820aff91730b8ec45a4b8ff4be07f586a140b68a9073998b36fa35297dc"
      end

      resource "truststore" do
        url "https://files.pythonhosted.org/packages/51/e9/3a7820be2bb0fe53b6bc9c3be26d3d1158004e4c3ab953aa6840b955b1e9/truststore-0.10.5-py3-none-any.whl", using: :nounzip
        sha256 "9aaaedaefaf06d8b206278cf8b5012bc897f485a874503501e12d776df78951c"
      end

      resource "typer" do
        url "https://files.pythonhosted.org/packages/05/ff/51969745f31cea6bcd12151e668febcf979656316e67a7755942267c1273/typer-0.29.1-py3-none-any.whl", using: :nounzip
        sha256 "00dbc549c13428bec1be55fe1f4d0fb8c6637a310e4f178ef14abe9534ee7b58"
      end

      resource "typing-inspection" do
        url "https://files.pythonhosted.org/packages/de/0c/ea2544850a7c135e15033a5c7a8e7211136184b7ae63e2239d557c2b3019/typing_inspection-0.4.5-py3-none-any.whl", using: :nounzip
        sha256 "bc210535442b39e1bf2805e0c7a17dfd6a4ace760c84c7f7d16245d23a6b1c39"
      end
    end
    on_intel do
      resource "charset-normalizer" do
        url "https://files.pythonhosted.org/packages/e7/c8/693809898870237d82785a03f3b2b58fe4c9f14669f84a7d4e623c92a59e/charset_normalizer-3.5.2-cp312-cp312-macosx_10_13_universal2.whl", using: :nounzip
        sha256 "ed2a239c0ea213acc1908150a3037257083c7c083128f1a4cec2ec4b97dca491"
      end

      resource "msgspec" do
        url "https://files.pythonhosted.org/packages/a4/87/3e017dca361d09ed1cd09dc981a6df21b32e830fbec3470f7486d38b6be5/msgspec-0.22.0-cp312-cp312-macosx_10_13_x86_64.whl", using: :nounzip
        sha256 "ab1e9e7531e353653b906cdd12a0220cc288a1e8e3436aabc65f4508d91b14d9"
      end

      resource "numpy" do
        url "https://files.pythonhosted.org/packages/34/f2/b4fc1bafca03868220b5eaf729d2f21ebd7d7b151c0f9e144fe212bbca35/numpy-2.5.4-cp312-cp312-macosx_14_0_x86_64.whl", using: :nounzip
        sha256 "aec3fc4b32ff82421274f5d205c559c51c840c8df66a78efd7f3612dd005a26a"
      end

      resource "psutil" do
        url "https://files.pythonhosted.org/packages/e7/36/5ee6e05c9bd427237b11b3937ad82bb8ad2752d72c6969314590dd0c2f6e/psutil-7.2.2-cp36-abi3-macosx_10_9_x86_64.whl", using: :nounzip
        sha256 "ed0cace939114f62738d808fdcecd4c869222507e266e574799e9c0faa17d486"
      end

      resource "pyyaml" do
        url "https://files.pythonhosted.org/packages/d1/33/422b98d2195232ca1826284a76852ad5a86fe23e31b009c9886b2d0fb8b2/pyyaml-6.0.3-cp312-cp312-macosx_10_13_x86_64.whl", using: :nounzip
        sha256 "7f047e29dcae44602496db43be01ad42fc6f1cc0d8cd6c83d342306c32270196"
      end

      resource "rpds-py" do
        url "https://files.pythonhosted.org/packages/5d/34/a828586ea3329fbb50895b50e9cf98ca3d924a9f41a0b26d443bff1b3794/rpds_py-2026.9.1-cp312-cp312-macosx_10_12_x86_64.whl", using: :nounzip
        sha256 "50906f5aea24b5a865cbd0a589698288631d9f3a54c3a937c83aefa95a0d14af"
      end
    end
  end

  on_linux do
    on_arm do
      resource "charset-normalizer" do
        url "https://files.pythonhosted.org/packages/c9/87/2fea8c13dc24b3ca9c6f803a5b2dfdeae73eb4f9e12c7885ed908ff0433c/charset_normalizer-3.5.2-cp312-cp312-manylinux2014_aarch64.manylinux_2_17_aarch64.manylinux_2_28_aarch64.whl", using: :nounzip
        sha256 "b91363207bd9dc966a691e959bb47f64b30f7ac4b072be9968b366982f7db77c"
      end

      resource "msgspec" do
        url "https://files.pythonhosted.org/packages/54/a5/65de05f8804492f76ea121b21a125cdf1d97ec461c677bfa0ba354d6fbdd/msgspec-0.22.0-cp312-cp312-manylinux2014_aarch64.manylinux_2_17_aarch64.manylinux_2_28_aarch64.whl", using: :nounzip
        sha256 "b5a169b5b03f0f2c7a296c002647db1dab75d2cd501bca34e32b71cab0261b56"
      end

      resource "numpy" do
        url "https://files.pythonhosted.org/packages/dc/96/8319e2457ae4333c62c815c7006b869a4f60985c1e01024c2f8c6c040fe5/numpy-2.5.4-cp312-cp312-manylinux_2_27_aarch64.manylinux_2_28_aarch64.whl", using: :nounzip
        sha256 "fe4d21ab149f15e4e6043dfb0de87e6e5f34ac176cde83060e9802981fca2ac2"
      end

      resource "psutil" do
        url "https://files.pythonhosted.org/packages/63/65/37648c0c158dc222aba51c089eb3bdfa238e621674dc42d48706e639204f/psutil-7.2.2-cp36-abi3-manylinux2014_aarch64.manylinux_2_17_aarch64.manylinux_2_28_aarch64.whl", using: :nounzip
        sha256 "b0726cecd84f9474419d67252add4ac0cd9811b04d61123054b9fb6f57df6e9e"
      end

      resource "pyyaml" do
        url "https://files.pythonhosted.org/packages/ed/23/7a778b6bd0b9a8039df8b1b1d80e2e2ad78aa04171592c8a5c43a56a6af4/pyyaml-6.0.3-cp312-cp312-manylinux2014_aarch64.manylinux_2_17_aarch64.manylinux_2_28_aarch64.whl", using: :nounzip
        sha256 "9149cad251584d5fb4981be1ecde53a1ca46c891a79788c0df828d2f166bda28"
      end

      resource "rpds-py" do
        url "https://files.pythonhosted.org/packages/42/ff/bf7d54f362748fd6a49277b9d6531c394074110fedf50ad791ec59133fbb/rpds_py-2026.9.1-cp312-cp312-manylinux_2_17_aarch64.manylinux2014_aarch64.whl", using: :nounzip
        sha256 "2693b2728bbcc48d09a981a356954b0c47c53ff25b545856f28a889ea619f69a"
      end
    end
    on_intel do
      resource "charset-normalizer" do
        url "https://files.pythonhosted.org/packages/7f/c5/38806a25ab5e65fc178f39affeda20858efafede2fce1ffc2556cfc9fe73/charset_normalizer-3.5.2-cp312-cp312-manylinux2014_x86_64.manylinux_2_17_x86_64.manylinux_2_28_x86_64.whl", using: :nounzip
        sha256 "3d31298449090ab8d47b7b1b2a555ff73cac7ed438a08b7ac160980c7ebed649"
      end

      resource "msgspec" do
        url "https://files.pythonhosted.org/packages/4a/cc/aa1a47f8c92280d37498a5ea56a2a36606d034383e3e6472d64cbb56cf85/msgspec-0.22.0-cp312-cp312-manylinux2014_x86_64.manylinux_2_17_x86_64.manylinux_2_28_x86_64.whl", using: :nounzip
        sha256 "99c401861c5bb3a57f7d6423ea7ed4352cd57aa3f04f4fbe9f3e3e4564a10f08"
      end

      resource "numpy" do
        url "https://files.pythonhosted.org/packages/43/a3/c799c62e19c337e6d3770b08e475887fb30ce8477d3c09efca6b2f0228a6/numpy-2.5.4-cp312-cp312-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl", using: :nounzip
        sha256 "fbde6962867ee75b48b0ee29b2b9372ec5d617799dbaf38e82dc0596f2f7738a"
      end

      resource "psutil" do
        url "https://files.pythonhosted.org/packages/b5/70/5d8df3b09e25bce090399cf48e452d25c935ab72dad19406c77f4e828045/psutil-7.2.2-cp36-abi3-manylinux2010_x86_64.manylinux_2_12_x86_64.manylinux_2_28_x86_64.whl", using: :nounzip
        sha256 "076a2d2f923fd4821644f5ba89f059523da90dc9014e85f8e45a5774ca5bc6f9"
      end

      resource "pyyaml" do
        url "https://files.pythonhosted.org/packages/8b/9d/b3589d3877982d4f2329302ef98a8026e7f4443c765c46cfecc8858c6b4b/pyyaml-6.0.3-cp312-cp312-manylinux2014_x86_64.manylinux_2_17_x86_64.manylinux_2_28_x86_64.whl", using: :nounzip
        sha256 "ba1cc08a7ccde2d2ec775841541641e4548226580ab850948cbfda66a1befcdc"
      end

      resource "rpds-py" do
        url "https://files.pythonhosted.org/packages/1d/6d/b26eb1e75395925b3a142ed351cbed2ec8212f5c9d937aee3df32c701baa/rpds_py-2026.9.1-cp312-cp312-manylinux_2_17_x86_64.manylinux2014_x86_64.whl", using: :nounzip
        sha256 "addeda51556dac7c1a2f14cda62db8b621cd12afba3091d03a96c72932387eab"
      end
    end
  end

  # END GENERATED WHEEL RESOURCES

  def install
    python = Formula["python@3.12"].opt_bin/"python3.12"
    virtualenv_create(libexec, python, system_site_packages: false)
    wheelhouse = buildpath/"wheels"
    resources.each { |r| r.stage wheelhouse }
    # Homebrew fetches and checks these resources before entering the sandbox.
    # installer is a pure Python wheel; zipimport bootstraps it without pip/uv,
    # network access, or platform.mac_ver() (which is empty in some sandboxes).
    ENV["PYTHONPATH"] = wheelhouse.glob("installer-*.whl").fetch(0)
    system libexec/"bin/python", "-m", "installer", "--no-compile-bytecode",
           *wheelhouse.glob("*.whl").sort, buildpath/"songe-#{version}-py3-none-any.whl"
    bin.install_symlink libexec/"bin/songe"
  end

  def caveats
    <<~EOS
      Run songe init.
    EOS
  end

  test do
    ENV["SONGE_DATA_DIR"] = testpath/"data"
    assert_equal version.to_s, shell_output("#{bin}/songe --version").strip
  end
end
