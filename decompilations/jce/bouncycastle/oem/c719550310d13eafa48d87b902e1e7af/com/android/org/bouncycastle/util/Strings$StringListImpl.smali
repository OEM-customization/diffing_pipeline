.class Lcom/android/org/bouncycastle/util/Strings$StringListImpl;
.super Ljava/util/ArrayList;
.source "Strings.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/StringList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/util/Strings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringListImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/android/org/bouncycastle/util/StringList;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/bouncycastle/util/Strings$StringListImpl;)V
    .registers 2
    .param p1, "-this0"    # Lcom/android/org/bouncycastle/util/Strings$StringListImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/org/bouncycastle/util/Strings$StringListImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 375
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/util/Strings$StringListImpl;->add(ILjava/lang/String;)V

    return-void
.end method

.method public add(ILjava/lang/String;)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/String;

    .prologue
    .line 377
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 378
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 365
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/util/Strings$StringListImpl;->add(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/String;)Z
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 367
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 428
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 370
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/util/Strings$StringListImpl;->set(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/String;

    .prologue
    .line 372
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toStringArray()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/Strings$StringListImpl;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 384
    .local v1, "strs":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v2, v1

    if-eq v0, v2, :cond_15

    .line 386
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/util/Strings$StringListImpl;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 389
    :cond_15
    return-object v1
.end method

.method public toStringArray(II)[Ljava/lang/String;
    .registers 7
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 394
    sub-int v2, p2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 396
    .local v1, "strs":[Ljava/lang/String;
    move v0, p1

    .local v0, "i":I
    :goto_5
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/Strings$StringListImpl;->size()I

    move-result v2

    if-eq v0, v2, :cond_1a

    if-eq v0, p2, :cond_1a

    .line 398
    sub-int v3, v0, p1

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/util/Strings$StringListImpl;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v3

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 401
    :cond_1a
    return-object v1
.end method
