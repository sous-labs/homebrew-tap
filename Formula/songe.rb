class Songe < Formula
  include Language::Python::Virtualenv

  desc "Local hindsight distillation for a model that sleeps"
  homepage "https://github.com/sous-labs/songe"
  # The release updater verifies the CLI wheel and pins all dependency wheels.
  url "https://files.pythonhosted.org/packages/23/5c/7903c41f6067152315e5f18b045c6afec5920cd6f587cdf05bfeb991d935/songe-0.1.0a15-py3-none-any.whl", using: :nounzip
  version "0.1.0a15"
  sha256 "8675e79ab875feee273f6d3abe94aed32687de3435483a7a57cb3fb3ac2bd1de"

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

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/6d/39/5eec3296860b94ac20bb8ed807725b88f6adfab3f343df592afd975f5f86/certifi-2026.11.20-py3-none-any.whl", using: :nounzip
    sha256 "7422df25243767b9877031a2248cb14d09ddac9beee846f4cef3d5c9191d488f"
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
    url "https://files.pythonhosted.org/packages/a6/3e/ae8e8c55d0fa4429c198e91aa82622f065332ddacfe6c5e9740a7ddec15f/httpx_ws-0.10.0-py3-none-any.whl", using: :nounzip
    sha256 "62ed6eb42acbfdad4b10cb0856f60d8bec0096b2c7c22c10b7814cb79d056d8c"
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
    url "https://files.pythonhosted.org/packages/5b/be/373cc7341f53bfd3acba3e5db62433fd960a45fcf73ad64a5f4d27e74910/platformdirs-4.14.8-py3-none-any.whl", using: :nounzip
    sha256 "1e34af590de4d978631b751eb2202f2fee4497537a17c1720b12fcf57b331392"
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
    url "https://files.pythonhosted.org/packages/fb/be/35261223d9416a0751cdff1c7b4a6f881387218a12d439fe22fefebc8c04/textual-8.2.8-py3-none-any.whl", using: :nounzip
    sha256 "267375fd402dc8d981457212efa71f0e3365fd17bba144ba9bb3ed7563cb374a"
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
        url "https://files.pythonhosted.org/packages/5e/b1/9530d6bee606979d54501adcc767d958a38929827f11a524b0d93429d2ad/annotated_doc-0.0.7-py3-none-any.whl", using: :nounzip
        sha256 "6bc31bbbec6dfaaedc1676dbc11dbda96fe22a2b5c400e9ebad113fec44a9dc6"
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
        url "https://files.pythonhosted.org/packages/68/66/870b527908a06c7ec0e91239bd2c4d0bb22921efd4f915428b4e47d461a6/filelock-4.3.0-py3-none-any.whl", using: :nounzip
        sha256 "f933f39f7e01249a4a49b9abab30edc6d4b874624c3de5dd0b0d137aa8adb979"
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
        url "https://files.pythonhosted.org/packages/2a/e8/009c347feac27f8960605aa98d55ed263b5870dd4fd80b82fd1d00d5716c/httpcore2-2.16.2-py3-none-any.whl", using: :nounzip
        sha256 "16051ae2a42f776007543f32de9349a317b23d2cbb4e1456b4bac0e88b87419a"
      end

      resource "httpx2" do
        url "https://files.pythonhosted.org/packages/77/de/8c4306a3d6aa2495111986addf33a9e561eff4c47552e4c4b9251160d0ad/httpx2-2.16.2-py3-none-any.whl", using: :nounzip
        sha256 "f05c13aade4c45dbf1c9060647a1058f0acad62398fad96e741269edb33d46f5"
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
        url "https://files.pythonhosted.org/packages/8a/92/6de34324a266b73c04ba977db5864b9016500076b26f09078a565f527d34/numpy-2.5.5-cp312-cp312-macosx_14_0_arm64.whl", using: :nounzip
        sha256 "a3856a97e48ed8371c680fb04120b99fbcc29f2076ebe6dc3deb34f77947c5ca"
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
        url "https://files.pythonhosted.org/packages/8a/8c/824a686c4ba815ddb0722f9e66272088bccd4e1ae1d2f7015375e4a4fc7f/pydantic-2.14.4-py3-none-any.whl", using: :nounzip
        sha256 "653a2ad9f6d8858529c77c72717d0ea991d6c6837fe683246b2f4b2bbfc3fadc"
      end

      resource "pydantic-core" do
        url "https://files.pythonhosted.org/packages/9f/6f/4e172894c2a4ca3bacd6c5f823ea5576df25eafe7593ffeb3576895b92aa/pydantic_core-2.50.5-cp312-cp312-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "a9bcf23628860d5a90cacdc188ee3b7d0547a38eb985214f03e7002a6ca0e558"
      end

      resource "pyyaml" do
        url "https://files.pythonhosted.org/packages/c7/30/efaabf2d135d11f32cbd4752f3b7df0d592894ee3ca252bbba013a7d5891/pyyaml-6.0.4-cp312-cp312-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "4d30c2f186612bd2f9f07c08a4c96721af59cfc8da3ec7cb27dfa2834e8bb019"
      end

      resource "regex" do
        url "https://files.pythonhosted.org/packages/51/d2/45aedbbf94e0cee3d64ff2a170dc89cfe52edaecab4f88645c996bfff589/regex-2026.11.19-cp312-cp312-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "7ecca76778a2889d59a978ddb78864ea55b70238ed60245bccada4f01578cbbd"
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
        url "https://files.pythonhosted.org/packages/a4/6c/0a5b01b84e605e811f25d091262f199894c0839dcd7f2a289254cf7a16a7/transformers-5.24.0-py3-none-any.whl", using: :nounzip
        sha256 "ff5ebedf9359f94bb63772b6380eba6e7104d010cbbb2cb82c788817ea7486f6"
      end

      resource "truststore" do
        url "https://files.pythonhosted.org/packages/51/e9/3a7820be2bb0fe53b6bc9c3be26d3d1158004e4c3ab953aa6840b955b1e9/truststore-0.10.5-py3-none-any.whl", using: :nounzip
        sha256 "9aaaedaefaf06d8b206278cf8b5012bc897f485a874503501e12d776df78951c"
      end

      resource "typer" do
        url "https://files.pythonhosted.org/packages/62/f3/864dcb0e165b52e9f75aa3c7e0aeeb9876f139c66eb14d87856bb173b0fa/typer-0.29.2-py3-none-any.whl", using: :nounzip
        sha256 "f30731f8ca758368b836b3714872e58e395cef8fcaff918c853b1969ed5274e7"
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
        url "https://files.pythonhosted.org/packages/1e/a1/6563b74cd67e3873f9897afebb3244529b1494d4c0df30f3201329a7e316/numpy-2.5.5-cp312-cp312-macosx_14_0_x86_64.whl", using: :nounzip
        sha256 "f5e8603f0892d1b848e12124863b5b29af72383ee9b25ddc6fe4967d4c1ee6ef"
      end

      resource "psutil" do
        url "https://files.pythonhosted.org/packages/e7/36/5ee6e05c9bd427237b11b3937ad82bb8ad2752d72c6969314590dd0c2f6e/psutil-7.2.2-cp36-abi3-macosx_10_9_x86_64.whl", using: :nounzip
        sha256 "ed0cace939114f62738d808fdcecd4c869222507e266e574799e9c0faa17d486"
      end

      resource "pyyaml" do
        url "https://files.pythonhosted.org/packages/86/df/5aec8a8c65e4c11fab31b55d53029d8013e5ccfcf409c20f8175e3e267c7/pyyaml-6.0.4-cp312-cp312-macosx_10_15_x86_64.whl", using: :nounzip
        sha256 "1088ad740f50c13178dad16fbc2fa1f634c791d42c7009fdb390e38e5b90b788"
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
        url "https://files.pythonhosted.org/packages/c2/22/82184e9a5b50a4a298e9f8fe0bd8cfc483672dbfea8a3b57c78e2376b139/numpy-2.5.5-cp312-cp312-manylinux_2_27_aarch64.manylinux_2_28_aarch64.whl", using: :nounzip
        sha256 "a0750f2156d53446caca85663d0b65d67214e1664b9050454a731ea1418d176a"
      end

      resource "psutil" do
        url "https://files.pythonhosted.org/packages/63/65/37648c0c158dc222aba51c089eb3bdfa238e621674dc42d48706e639204f/psutil-7.2.2-cp36-abi3-manylinux2014_aarch64.manylinux_2_17_aarch64.manylinux_2_28_aarch64.whl", using: :nounzip
        sha256 "b0726cecd84f9474419d67252add4ac0cd9811b04d61123054b9fb6f57df6e9e"
      end

      resource "pyyaml" do
        url "https://files.pythonhosted.org/packages/af/fb/d5ff6957db5c843151ff13196277bb8e20b2d5db2e2db3e8d051038d888b/pyyaml-6.0.4-cp312-cp312-manylinux2014_aarch64.manylinux_2_17_aarch64.manylinux_2_28_aarch64.whl", using: :nounzip
        sha256 "45e37dd647db9d67b757444c74060c064ace5fdaa08f42bf4fda3812275d423e"
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
        url "https://files.pythonhosted.org/packages/99/61/522b973ba38987b22a4a71beaed2ea6ac9fd4f687baaa2bc9a45100625e0/numpy-2.5.5-cp312-cp312-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl", using: :nounzip
        sha256 "704d819265e5d1064d932968e9ee85fff2103ccc78c05b878c06943ba27b8507"
      end

      resource "psutil" do
        url "https://files.pythonhosted.org/packages/b5/70/5d8df3b09e25bce090399cf48e452d25c935ab72dad19406c77f4e828045/psutil-7.2.2-cp36-abi3-manylinux2010_x86_64.manylinux_2_12_x86_64.manylinux_2_28_x86_64.whl", using: :nounzip
        sha256 "076a2d2f923fd4821644f5ba89f059523da90dc9014e85f8e45a5774ca5bc6f9"
      end

      resource "pyyaml" do
        url "https://files.pythonhosted.org/packages/94/80/1d27f7084b983b7cfd1fb35e65a38276d9eddfdcdabc0922bb26cf9521bc/pyyaml-6.0.4-cp312-cp312-manylinux2014_x86_64.manylinux_2_17_x86_64.manylinux_2_28_x86_64.whl", using: :nounzip
        sha256 "93bfb2459195406a518e2f487a9bbf01df240175f31e06f5a252ac6734c7bbf0"
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
