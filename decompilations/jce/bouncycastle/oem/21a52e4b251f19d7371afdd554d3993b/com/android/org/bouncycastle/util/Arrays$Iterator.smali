.class public Lcom/android/org/bouncycastle/util/Arrays$Iterator;
.super Ljava/lang/Object;
.source "Arrays.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/util/Arrays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Iterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist dataArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private blacklist position:I


# direct methods
.method public constructor blacklist <init>([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 1257
    .local p0, "this":Lcom/android/org/bouncycastle/util/Arrays$Iterator;, "Lcom/android/org/bouncycastle/util/Arrays$Iterator<TT;>;"
    .local p1, "dataArray":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1246
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->position:I

    .line 1258
    iput-object p1, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->dataArray:[Ljava/lang/Object;

    .line 1259
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api hasNext()Z
    .registers 3

    .line 1263
    .local p0, "this":Lcom/android/org/bouncycastle/util/Arrays$Iterator;, "Lcom/android/org/bouncycastle/util/Arrays$Iterator<TT;>;"
    iget v0, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->position:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->dataArray:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist core-platform-api test-api next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1268
    .local p0, "this":Lcom/android/org/bouncycastle/util/Arrays$Iterator;, "Lcom/android/org/bouncycastle/util/Arrays$Iterator<TT;>;"
    iget v0, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->position:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->dataArray:[Ljava/lang/Object;

    array-length v2, v1

    if-eq v0, v2, :cond_e

    .line 1273
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->position:I

    aget-object v0, v1, v0

    return-object v0

    .line 1270
    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of elements: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api remove()V
    .registers 3

    .line 1278
    .local p0, "this":Lcom/android/org/bouncycastle/util/Arrays$Iterator;, "Lcom/android/org/bouncycastle/util/Arrays$Iterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot remove element from an Array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method