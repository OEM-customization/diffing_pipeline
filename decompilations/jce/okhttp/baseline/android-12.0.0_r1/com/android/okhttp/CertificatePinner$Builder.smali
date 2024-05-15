.class public final Lcom/android/okhttp/CertificatePinner$Builder;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/CertificatePinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final greylist-max-o hostnameToPins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/android/okhttp/okio/ByteString;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/CertificatePinner$Builder;->hostnameToPins:Ljava/util/Map;

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/CertificatePinner$Builder;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/CertificatePinner$Builder;

    .line 237
    iget-object v0, p0, Lcom/android/okhttp/CertificatePinner$Builder;->hostnameToPins:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public varargs blacklist add(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/okhttp/CertificatePinner$Builder;
    .registers 10
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "pins"    # [Ljava/lang/String;

    .line 249
    if-eqz p1, :cond_69

    .line 251
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 252
    .local v0, "hostPins":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/okhttp/okio/ByteString;>;"
    iget-object v1, p0, Lcom/android/okhttp/CertificatePinner$Builder;->hostnameToPins:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 253
    .local v1, "previousPins":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/okhttp/okio/ByteString;>;"
    if-eqz v1, :cond_18

    .line 254
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 257
    :cond_18
    array-length v2, p2

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_68

    aget-object v4, p2, v3

    .line 258
    .local v4, "pin":Ljava/lang/String;
    const-string v5, "sha1/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 261
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/okhttp/okio/ByteString;->decodeBase64(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v5

    .line 262
    .local v5, "decodedPin":Lcom/android/okhttp/okio/ByteString;
    if-eqz v5, :cond_3a

    .line 265
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    .end local v4    # "pin":Ljava/lang/String;
    .end local v5    # "decodedPin":Lcom/android/okhttp/okio/ByteString;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 263
    .restart local v4    # "pin":Ljava/lang/String;
    .restart local v5    # "decodedPin":Lcom/android/okhttp/okio/ByteString;
    :cond_3a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pins must be base64: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    .end local v5    # "decodedPin":Lcom/android/okhttp/okio/ByteString;
    :cond_51
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pins must start with \'sha1/\': "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 268
    .end local v4    # "pin":Ljava/lang/String;
    :cond_68
    return-object p0

    .line 249
    .end local v0    # "hostPins":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/okhttp/okio/ByteString;>;"
    .end local v1    # "previousPins":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/okhttp/okio/ByteString;>;"
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hostname == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o build()Lcom/android/okhttp/CertificatePinner;
    .registers 3

    .line 272
    new-instance v0, Lcom/android/okhttp/CertificatePinner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/CertificatePinner;-><init>(Lcom/android/okhttp/CertificatePinner$Builder;Lcom/android/okhttp/CertificatePinner$1;)V

    return-object v0
.end method
