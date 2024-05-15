.class final enum Lcom/android/org/conscrypt/TrustManagerImpl$GlobalHostnameVerifierAdapter;
.super Ljava/lang/Enum;
.source "TrustManagerImpl.java"

# interfaces
.implements Lcom/android/org/conscrypt/ConscryptHostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/TrustManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GlobalHostnameVerifierAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/TrustManagerImpl$GlobalHostnameVerifierAdapter;",
        ">;",
        "Lcom/android/org/conscrypt/ConscryptHostnameVerifier;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/TrustManagerImpl$GlobalHostnameVerifierAdapter;

.field public static final enum blacklist INSTANCE:Lcom/android/org/conscrypt/TrustManagerImpl$GlobalHostnameVerifierAdapter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1022
    new-instance v0, Lcom/android/org/conscrypt/TrustManagerImpl$GlobalHostnameVerifierAdapter;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/TrustManagerImpl$GlobalHostnameVerifierAdapter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/TrustManagerImpl$GlobalHostnameVerifierAdapter;->INSTANCE:Lcom/android/org/conscrypt/TrustManagerImpl$GlobalHostnameVerifierAdapter;

    .line 1021
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/org/conscrypt/TrustManagerImpl$GlobalHostnameVerifierAdapter;

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/org/conscrypt/TrustManagerImpl$GlobalHostnameVerifierAdapter;->$VALUES:[Lcom/android/org/conscrypt/TrustManagerImpl$GlobalHostnameVerifierAdapter;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1021
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/TrustManagerImpl$GlobalHostnameVerifierAdapter;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1021
    const-class v0, Lcom/android/org/conscrypt/TrustManagerImpl$GlobalHostnameVerifierAdapter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/TrustManagerImpl$GlobalHostnameVerifierAdapter;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/TrustManagerImpl$GlobalHostnameVerifierAdapter;
    .registers 1

    .line 1021
    sget-object v0, Lcom/android/org/conscrypt/TrustManagerImpl$GlobalHostnameVerifierAdapter;->$VALUES:[Lcom/android/org/conscrypt/TrustManagerImpl$GlobalHostnameVerifierAdapter;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/TrustManagerImpl$GlobalHostnameVerifierAdapter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/TrustManagerImpl$GlobalHostnameVerifierAdapter;

    return-object v0
.end method


# virtual methods
.method public blacklist verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 4
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .line 1026
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    return v0
.end method
