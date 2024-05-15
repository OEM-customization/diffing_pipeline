.class public final Lcom/android/org/conscrypt/JSSEProvider;
.super Ljava/security/Provider;
.source "JSSEProvider.java"


# static fields
.field private static final serialVersionUID:J = 0x2aaf083489ce78ebL


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 47
    const-string/jumbo v0, "HarmonyJSSE"

    const-string/jumbo v1, "Harmony JSSE Provider"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 49
    const-string/jumbo v0, "KeyManagerFactory.PKIX"

    const-class v1, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/org/conscrypt/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v0, "Alg.Alias.KeyManagerFactory.X509"

    const-string/jumbo v1, "PKIX"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/conscrypt/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v0, "TrustManagerFactory.PKIX"

    const-class v1, Lcom/android/org/conscrypt/TrustManagerFactoryImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/org/conscrypt/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v0, "Alg.Alias.TrustManagerFactory.X509"

    const-string/jumbo v1, "PKIX"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/conscrypt/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string/jumbo v0, "KeyStore.AndroidCAStore"

    const-class v1, Lcom/android/org/conscrypt/TrustedCertificateKeyStoreSpi;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/org/conscrypt/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method
