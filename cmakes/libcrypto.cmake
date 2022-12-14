# 220922
project(libcrypto C)
set(source_dir ${CMAKE_SOURCE_DIR}/lib/boringssl)
add_library(crypto
        ${source_dir}/src/crypto/asn1/a_bitstr.c
        ${source_dir}/src/crypto/asn1/a_bool.c
        ${source_dir}/src/crypto/asn1/a_d2i_fp.c
        ${source_dir}/src/crypto/asn1/a_dup.c
        ${source_dir}/src/crypto/asn1/a_enum.c
        ${source_dir}/src/crypto/asn1/a_gentm.c
        ${source_dir}/src/crypto/asn1/a_i2d_fp.c
        ${source_dir}/src/crypto/asn1/a_int.c
        ${source_dir}/src/crypto/asn1/a_mbstr.c
        ${source_dir}/src/crypto/asn1/a_object.c
        ${source_dir}/src/crypto/asn1/a_octet.c
        ${source_dir}/src/crypto/asn1/a_print.c
#        ${source_dir}/src/crypto/asn1/a_strex.c
        ${source_dir}/src/crypto/asn1/a_strnid.c
        ${source_dir}/src/crypto/asn1/a_time.c
        ${source_dir}/src/crypto/asn1/a_type.c
        ${source_dir}/src/crypto/asn1/a_utctm.c
        ${source_dir}/src/crypto/asn1/a_utf8.c
        ${source_dir}/src/crypto/asn1/asn1_lib.c
        ${source_dir}/src/crypto/asn1/asn1_par.c
        ${source_dir}/src/crypto/asn1/asn_pack.c
        ${source_dir}/src/crypto/asn1/f_int.c
        ${source_dir}/src/crypto/asn1/f_string.c
        ${source_dir}/src/crypto/asn1/tasn_dec.c
        ${source_dir}/src/crypto/asn1/tasn_enc.c
        ${source_dir}/src/crypto/asn1/tasn_fre.c
        ${source_dir}/src/crypto/asn1/tasn_new.c
        ${source_dir}/src/crypto/asn1/tasn_typ.c
        ${source_dir}/src/crypto/asn1/tasn_utl.c
        ${source_dir}/src/crypto/asn1/time_support.c
        ${source_dir}/src/crypto/base64/base64.c
        ${source_dir}/src/crypto/bio/bio.c
        ${source_dir}/src/crypto/bio/bio_mem.c
        ${source_dir}/src/crypto/bio/connect.c
        ${source_dir}/src/crypto/bio/fd.c
        ${source_dir}/src/crypto/bio/file.c
        ${source_dir}/src/crypto/bio/hexdump.c
        ${source_dir}/src/crypto/bio/pair.c
        ${source_dir}/src/crypto/bio/printf.c
        ${source_dir}/src/crypto/bio/socket.c
        ${source_dir}/src/crypto/bio/socket_helper.c
#        ${source_dir}/src/crypto/blake2/blake2.c
        ${source_dir}/src/crypto/bn_extra/bn_asn1.c
        ${source_dir}/src/crypto/bn_extra/convert.c
        ${source_dir}/src/crypto/buf/buf.c
        ${source_dir}/src/crypto/bytestring/asn1_compat.c
        ${source_dir}/src/crypto/bytestring/ber.c
        ${source_dir}/src/crypto/bytestring/cbb.c
        ${source_dir}/src/crypto/bytestring/cbs.c
        ${source_dir}/src/crypto/bytestring/unicode.c
        ${source_dir}/src/crypto/chacha/chacha.c
        ${source_dir}/src/crypto/cipher_extra/cipher_extra.c
        ${source_dir}/src/crypto/cipher_extra/derive_key.c
        ${source_dir}/src/crypto/cipher_extra/e_aesccm.c
        ${source_dir}/src/crypto/cipher_extra/e_aesctrhmac.c
        ${source_dir}/src/crypto/cipher_extra/e_aesgcmsiv.c
        ${source_dir}/src/crypto/cipher_extra/e_chacha20poly1305.c
        ${source_dir}/src/crypto/cipher_extra/e_null.c
        ${source_dir}/src/crypto/cipher_extra/e_rc2.c
        ${source_dir}/src/crypto/cipher_extra/e_rc4.c
        ${source_dir}/src/crypto/cipher_extra/e_tls.c
        ${source_dir}/src/crypto/cipher_extra/tls_cbc.c
        ${source_dir}/src/crypto/cmac/cmac.c
        ${source_dir}/src/crypto/conf/conf.c
        ${source_dir}/src/crypto/cpu-aarch64-fuchsia.c
        ${source_dir}/src/crypto/cpu-aarch64-linux.c
#        ${source_dir}/src/crypto/cpu-aarch64-win.c
        ${source_dir}/src/crypto/cpu-arm-linux.c
        ${source_dir}/src/crypto/cpu-arm.c
        ${source_dir}/src/crypto/cpu-intel.c
        ${source_dir}/src/crypto/cpu-ppc64le.c
        ${source_dir}/src/crypto/crypto.c
#        ${source_dir}/src/crypto/curve25519/curve25519.c
        ${source_dir}/src/crypto/curve25519/spake25519.c
#        ${source_dir}/src/crypto/dh_extra/params.c
#        ${source_dir}/src/crypto/dh_extra/dh_asn1.c
        ${source_dir}/src/crypto/digest_extra/digest_extra.c
        ${source_dir}/src/crypto/dsa/dsa.c
        ${source_dir}/src/crypto/dsa/dsa_asn1.c
        ${source_dir}/src/crypto/ecdh_extra/ecdh_extra.c
        ${source_dir}/src/crypto/ecdsa_extra/ecdsa_asn1.c
        ${source_dir}/src/crypto/ec_extra/ec_asn1.c
        ${source_dir}/src/crypto/ec_extra/ec_derive.c
#        ${source_dir}/src/crypto/ec_extra/hash_to_curve.c
        ${source_dir}/src/crypto/err/err.c
        #        ${source_dir}/src/crypto/err_data.c
        ${source_dir}/src/crypto/engine/engine.c
        ${source_dir}/src/crypto/evp/digestsign.c
        ${source_dir}/src/crypto/evp/evp.c
        ${source_dir}/src/crypto/evp/evp_asn1.c
        ${source_dir}/src/crypto/evp/evp_ctx.c
        ${source_dir}/src/crypto/evp/p_dsa_asn1.c
        ${source_dir}/src/crypto/evp/p_ec.c
        ${source_dir}/src/crypto/evp/p_ec_asn1.c
        ${source_dir}/src/crypto/evp/p_ed25519.c
        ${source_dir}/src/crypto/evp/p_ed25519_asn1.c
        ${source_dir}/src/crypto/evp/p_rsa.c
        ${source_dir}/src/crypto/evp/p_rsa_asn1.c
        ${source_dir}/src/crypto/evp/p_x25519.c
        ${source_dir}/src/crypto/evp/p_x25519_asn1.c
        ${source_dir}/src/crypto/evp/pbkdf.c
        ${source_dir}/src/crypto/evp/print.c
        ${source_dir}/src/crypto/evp/scrypt.c
        ${source_dir}/src/crypto/evp/sign.c
        ${source_dir}/src/crypto/ex_data.c
        ${source_dir}/src/crypto/hkdf/hkdf.c
#        ${source_dir}/src/crypto/hpke/hpke.c
        ${source_dir}/src/crypto/hrss/hrss.c
        ${source_dir}/src/crypto/lhash/lhash.c
        ${source_dir}/src/crypto/mem.c
        ${source_dir}/src/crypto/obj/obj.c
        ${source_dir}/src/crypto/obj/obj_xref.c
        ${source_dir}/src/crypto/pem/pem_all.c
        ${source_dir}/src/crypto/pem/pem_info.c
        ${source_dir}/src/crypto/pem/pem_lib.c
        ${source_dir}/src/crypto/pem/pem_oth.c
        ${source_dir}/src/crypto/pem/pem_pk8.c
        ${source_dir}/src/crypto/pem/pem_pkey.c
        ${source_dir}/src/crypto/pem/pem_x509.c
        ${source_dir}/src/crypto/pem/pem_xaux.c
        ${source_dir}/src/crypto/pkcs7/pkcs7.c
        ${source_dir}/src/crypto/pkcs7/pkcs7_x509.c
        ${source_dir}/src/crypto/pkcs8/pkcs8.c
        ${source_dir}/src/crypto/pkcs8/pkcs8_x509.c
        ${source_dir}/src/crypto/pkcs8/p5_pbev2.c
        ${source_dir}/src/crypto/poly1305/poly1305.c
        ${source_dir}/src/crypto/poly1305/poly1305_arm.c
        ${source_dir}/src/crypto/poly1305/poly1305_vec.c
        ${source_dir}/src/crypto/pool/pool.c
        ${source_dir}/src/crypto/rand_extra/deterministic.c
        ${source_dir}/src/crypto/rand_extra/forkunsafe.c
        ${source_dir}/src/crypto/rand_extra/fuchsia.c
#        ${source_dir}/src/crypto/rand_extra/passive.c
        ${source_dir}/src/crypto/rand_extra/rand_extra.c
        ${source_dir}/src/crypto/rand_extra/windows.c
        ${source_dir}/src/crypto/rc4/rc4.c
        ${source_dir}/src/crypto/refcount_c11.c
        ${source_dir}/src/crypto/refcount_lock.c
        ${source_dir}/src/crypto/rsa_extra/rsa_asn1.c
        ${source_dir}/src/crypto/rsa_extra/rsa_print.c
        ${source_dir}/src/crypto/stack/stack.c
        ${source_dir}/src/crypto/siphash/siphash.c
        ${source_dir}/src/crypto/thread.c
        ${source_dir}/src/crypto/thread_none.c
        ${source_dir}/src/crypto/thread_pthread.c
        ${source_dir}/src/crypto/thread_win.c
#        ${source_dir}/src/crypto/trust_token/pmbtoken.c
#        ${source_dir}/src/crypto/trust_token/trust_token.c
#        ${source_dir}/src/crypto/trust_token/voprf.c
        ${source_dir}/src/crypto/x509/a_digest.c
        ${source_dir}/src/crypto/x509/a_sign.c
        ${source_dir}/src/crypto/x509/a_verify.c
        ${source_dir}/src/crypto/x509/algorithm.c
        ${source_dir}/src/crypto/x509/asn1_gen.c
        ${source_dir}/src/crypto/x509/by_dir.c
        ${source_dir}/src/crypto/x509/by_file.c
        ${source_dir}/src/crypto/x509/i2d_pr.c
#        ${source_dir}/src/crypto/x509/name_print.c
        ${source_dir}/src/crypto/x509/rsa_pss.c
        ${source_dir}/src/crypto/x509/t_crl.c
        ${source_dir}/src/crypto/x509/t_req.c
        ${source_dir}/src/crypto/x509/t_x509.c
        ${source_dir}/src/crypto/x509/t_x509a.c
        ${source_dir}/src/crypto/x509/x509.c
        ${source_dir}/src/crypto/x509/x509_att.c
        ${source_dir}/src/crypto/x509/x509_cmp.c
        ${source_dir}/src/crypto/x509/x509_d2.c
        ${source_dir}/src/crypto/x509/x509_def.c
        ${source_dir}/src/crypto/x509/x509_ext.c
        ${source_dir}/src/crypto/x509/x509_lu.c
        ${source_dir}/src/crypto/x509/x509_obj.c
        ${source_dir}/src/crypto/x509/x509_req.c
        ${source_dir}/src/crypto/x509/x509_set.c
        ${source_dir}/src/crypto/x509/x509_trs.c
        ${source_dir}/src/crypto/x509/x509_txt.c
        ${source_dir}/src/crypto/x509/x509_v3.c
        ${source_dir}/src/crypto/x509/x509_vfy.c
        ${source_dir}/src/crypto/x509/x509_vpm.c
        ${source_dir}/src/crypto/x509/x509cset.c
        ${source_dir}/src/crypto/x509/x509name.c
        ${source_dir}/src/crypto/x509/x509rset.c
        ${source_dir}/src/crypto/x509/x509spki.c
        ${source_dir}/src/crypto/x509/x_algor.c
        ${source_dir}/src/crypto/x509/x_all.c
        ${source_dir}/src/crypto/x509/x_attrib.c
        ${source_dir}/src/crypto/x509/x_crl.c
        ${source_dir}/src/crypto/x509/x_exten.c
        ${source_dir}/src/crypto/x509/x_info.c
        ${source_dir}/src/crypto/x509/x_name.c
        ${source_dir}/src/crypto/x509/x_pkey.c
        ${source_dir}/src/crypto/x509/x_pubkey.c
        ${source_dir}/src/crypto/x509/x_req.c
        ${source_dir}/src/crypto/x509/x_sig.c
        ${source_dir}/src/crypto/x509/x_spki.c
        ${source_dir}/src/crypto/x509/x_val.c
        ${source_dir}/src/crypto/x509/x_x509.c
        ${source_dir}/src/crypto/x509/x_x509a.c
        ${source_dir}/src/crypto/x509v3/pcy_cache.c
        ${source_dir}/src/crypto/x509v3/pcy_data.c
        ${source_dir}/src/crypto/x509v3/pcy_lib.c
        ${source_dir}/src/crypto/x509v3/pcy_map.c
        ${source_dir}/src/crypto/x509v3/pcy_node.c
        ${source_dir}/src/crypto/x509v3/pcy_tree.c
        ${source_dir}/src/crypto/x509v3/v3_akey.c
        ${source_dir}/src/crypto/x509v3/v3_akeya.c
        ${source_dir}/src/crypto/x509v3/v3_alt.c
        ${source_dir}/src/crypto/x509v3/v3_bcons.c
        ${source_dir}/src/crypto/x509v3/v3_bitst.c
        ${source_dir}/src/crypto/x509v3/v3_conf.c
        ${source_dir}/src/crypto/x509v3/v3_cpols.c
        ${source_dir}/src/crypto/x509v3/v3_crld.c
        ${source_dir}/src/crypto/x509v3/v3_enum.c
        ${source_dir}/src/crypto/x509v3/v3_extku.c
        ${source_dir}/src/crypto/x509v3/v3_genn.c
        ${source_dir}/src/crypto/x509v3/v3_ia5.c
        ${source_dir}/src/crypto/x509v3/v3_info.c
        ${source_dir}/src/crypto/x509v3/v3_int.c
        ${source_dir}/src/crypto/x509v3/v3_lib.c
        ${source_dir}/src/crypto/x509v3/v3_ncons.c
        ${source_dir}/src/crypto/x509v3/v3_ocsp.c
        ${source_dir}/src/crypto/x509v3/v3_pci.c
        ${source_dir}/src/crypto/x509v3/v3_pcia.c
        ${source_dir}/src/crypto/x509v3/v3_pcons.c
        ${source_dir}/src/crypto/x509v3/v3_pmaps.c
        ${source_dir}/src/crypto/x509v3/v3_prn.c
        ${source_dir}/src/crypto/x509v3/v3_purp.c
        ${source_dir}/src/crypto/x509v3/v3_skey.c
        ${source_dir}/src/crypto/x509v3/v3_utl.c

        ${source_dir}/src/crypto/fipsmodule/sha/sha1.c
        ${source_dir}/src/crypto/fipsmodule/sha/sha256.c
        ${source_dir}/src/crypto/fipsmodule/sha/sha512.c
        ${source_dir}/src/crypto/fipsmodule/sha/sha1-altivec.c)
target_include_directories(crypto PRIVATE
        ${source_dir}/src/include)
target_compile_definitions(crypto PRIVATE OPENSSL_NO_ASM)
