.class public final enum Lcom/android/okhttp/TlsVersion;
.super Ljava/lang/Enum;
.source "TlsVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/okhttp/TlsVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/okhttp/TlsVersion;

.field public static final enum SSL_3_0:Lcom/android/okhttp/TlsVersion;

.field public static final enum TLS_1_0:Lcom/android/okhttp/TlsVersion;

.field public static final enum TLS_1_1:Lcom/android/okhttp/TlsVersion;

.field public static final enum TLS_1_2:Lcom/android/okhttp/TlsVersion;


# instance fields
.field final javaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/android/okhttp/TlsVersion;

    const-string/jumbo v1, "TLS_1_2"

    const-string/jumbo v2, "TLSv1.2"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/okhttp/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/okhttp/TlsVersion;->TLS_1_2:Lcom/android/okhttp/TlsVersion;

    new-instance v0, Lcom/android/okhttp/TlsVersion;

    const-string/jumbo v1, "TLS_1_1"

    .line 26
    const-string/jumbo v2, "TLSv1.1"

    .line 25
    invoke-direct {v0, v1, v4, v2}, Lcom/android/okhttp/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 26
    sput-object v0, Lcom/android/okhttp/TlsVersion;->TLS_1_1:Lcom/android/okhttp/TlsVersion;

    new-instance v0, Lcom/android/okhttp/TlsVersion;

    const-string/jumbo v1, "TLS_1_0"

    .line 27
    const-string/jumbo v2, "TLSv1"

    .line 26
    invoke-direct {v0, v1, v5, v2}, Lcom/android/okhttp/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    sput-object v0, Lcom/android/okhttp/TlsVersion;->TLS_1_0:Lcom/android/okhttp/TlsVersion;

    new-instance v0, Lcom/android/okhttp/TlsVersion;

    const-string/jumbo v1, "SSL_3_0"

    .line 28
    const-string/jumbo v2, "SSLv3"

    .line 27
    invoke-direct {v0, v1, v6, v2}, Lcom/android/okhttp/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 28
    sput-object v0, Lcom/android/okhttp/TlsVersion;->SSL_3_0:Lcom/android/okhttp/TlsVersion;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/okhttp/TlsVersion;

    sget-object v1, Lcom/android/okhttp/TlsVersion;->TLS_1_2:Lcom/android/okhttp/TlsVersion;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/okhttp/TlsVersion;->TLS_1_1:Lcom/android/okhttp/TlsVersion;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/okhttp/TlsVersion;->TLS_1_0:Lcom/android/okhttp/TlsVersion;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/okhttp/TlsVersion;->SSL_3_0:Lcom/android/okhttp/TlsVersion;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/okhttp/TlsVersion;->$VALUES:[Lcom/android/okhttp/TlsVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "javaName"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/android/okhttp/TlsVersion;->javaName:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static forJavaName(Ljava/lang/String;)Lcom/android/okhttp/TlsVersion;
    .registers 4
    .param p0, "javaName"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string/jumbo v0, "TLSv1.2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 39
    sget-object v0, Lcom/android/okhttp/TlsVersion;->TLS_1_2:Lcom/android/okhttp/TlsVersion;

    return-object v0

    .line 38
    :cond_c
    const-string/jumbo v0, "TLSv1.1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 40
    sget-object v0, Lcom/android/okhttp/TlsVersion;->TLS_1_1:Lcom/android/okhttp/TlsVersion;

    return-object v0

    .line 38
    :cond_18
    const-string/jumbo v0, "TLSv1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 41
    sget-object v0, Lcom/android/okhttp/TlsVersion;->TLS_1_0:Lcom/android/okhttp/TlsVersion;

    return-object v0

    .line 38
    :cond_24
    const-string/jumbo v0, "SSLv3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 42
    sget-object v0, Lcom/android/okhttp/TlsVersion;->SSL_3_0:Lcom/android/okhttp/TlsVersion;

    return-object v0

    .line 44
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected TLS version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/okhttp/TlsVersion;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/android/okhttp/TlsVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/TlsVersion;

    return-object v0
.end method

.method public static values()[Lcom/android/okhttp/TlsVersion;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/okhttp/TlsVersion;->$VALUES:[Lcom/android/okhttp/TlsVersion;

    return-object v0
.end method


# virtual methods
.method public javaName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/okhttp/TlsVersion;->javaName:Ljava/lang/String;

    return-object v0
.end method
