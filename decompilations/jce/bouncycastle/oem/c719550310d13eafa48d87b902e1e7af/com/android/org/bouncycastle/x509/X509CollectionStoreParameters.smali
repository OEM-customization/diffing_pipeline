.class public Lcom/android/org/bouncycastle/x509/X509CollectionStoreParameters;
.super Ljava/lang/Object;
.source "X509CollectionStoreParameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/x509/X509StoreParameters;


# instance fields
.field private collection:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 4
    .param p1, "collection"    # Ljava/util/Collection;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_e

    .line 31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "collection cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_e
    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509CollectionStoreParameters;->collection:Ljava/util/Collection;

    .line 34
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 44
    new-instance v0, Lcom/android/org/bouncycastle/x509/X509CollectionStoreParameters;

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CollectionStoreParameters;->collection:Ljava/util/Collection;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/x509/X509CollectionStoreParameters;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCollection()Ljava/util/Collection;
    .registers 3

    .prologue
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CollectionStoreParameters;->collection:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "X509CollectionStoreParameters: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  collection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/x509/X509CollectionStoreParameters;->collection:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
