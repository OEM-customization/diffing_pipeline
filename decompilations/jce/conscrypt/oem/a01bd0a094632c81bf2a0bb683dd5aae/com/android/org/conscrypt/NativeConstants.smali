.class final Lcom/android/org/conscrypt/NativeConstants;
.super Ljava/lang/Object;
.source "NativeConstants.java"


# static fields
.field static final EVP_PKEY_EC:I = 0x198

.field static final EVP_PKEY_RSA:I = 0x6

.field static final EXFLAG_CA:I = 0x10

.field static final EXFLAG_CRITICAL:I = 0x200

.field static final RSA_NO_PADDING:I = 0x3

.field static final RSA_PKCS1_OAEP_PADDING:I = 0x4

.field static final RSA_PKCS1_PADDING:I = 0x1

.field static final RSA_PKCS1_PSS_PADDING:I = 0x6

.field static final SSL3_RT_ALERT:I = 0x15

.field static final SSL3_RT_APPLICATION_DATA:I = 0x17

.field static final SSL3_RT_CHANGE_CIPHER_SPEC:I = 0x14

.field static final SSL3_RT_HANDSHAKE:I = 0x16

.field static final SSL3_RT_HEADER_LENGTH:I = 0x5

.field static final SSL3_RT_MAX_PACKET_SIZE:I = 0x4145

.field static final SSL3_RT_MAX_PLAIN_LENGTH:I = 0x4000

.field static final SSL_CB_HANDSHAKE_DONE:I = 0x20

.field static final SSL_CB_HANDSHAKE_START:I = 0x10

.field static final SSL_ERROR_NONE:I = 0x0

.field static final SSL_ERROR_WANT_READ:I = 0x2

.field static final SSL_ERROR_WANT_WRITE:I = 0x3

.field static final SSL_ERROR_ZERO_RETURN:I = 0x6

.field static final SSL_MODE_CBC_RECORD_SPLITTING:I = 0x100

.field static final SSL_MODE_ENABLE_FALSE_START:I = 0x80

.field static final SSL_MODE_SEND_FALLBACK_SCSV:I = 0x400

.field static final SSL_OP_CIPHER_SERVER_PREFERENCE:I = 0x400000

.field static final SSL_OP_NO_SSLv3:I = 0x2000000

.field static final SSL_OP_NO_TICKET:I = 0x4000

.field static final SSL_OP_NO_TLSv1:I = 0x4000000

.field static final SSL_OP_NO_TLSv1_1:I = 0x10000000

.field static final SSL_OP_NO_TLSv1_2:I = 0x8000000

.field static final SSL_RECEIVED_SHUTDOWN:I = 0x2

.field static final SSL_SENT_SHUTDOWN:I = 0x1

.field static final SSL_VERIFY_FAIL_IF_NO_PEER_CERT:I = 0x2

.field static final SSL_VERIFY_NONE:I = 0x0

.field static final SSL_VERIFY_PEER:I = 0x1

.field static final TLS_CT_ECDSA_SIGN:I = 0x40

.field static final TLS_CT_RSA_SIGN:I = 0x1


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
