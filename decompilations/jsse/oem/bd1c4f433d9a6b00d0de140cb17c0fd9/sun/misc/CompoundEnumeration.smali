.class public Lsun/misc/CompoundEnumeration;
.super Ljava/lang/Object;
.source "CompoundEnumeration.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private enums:[Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Enumeration",
            "<TE;>;"
        }
    .end annotation
.end field

.field private index:I


# direct methods
.method public constructor <init>([Ljava/util/Enumeration;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Enumeration",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lsun/misc/CompoundEnumeration;, "Lsun/misc/CompoundEnumeration<TE;>;"
    .local p1, "enums":[Ljava/util/Enumeration;, "[Ljava/util/Enumeration<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/CompoundEnumeration;->index:I

    .line 40
    iput-object p1, p0, Lsun/misc/CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    .line 41
    return-void
.end method

.method private next()Z
    .registers 3

    .prologue
    .line 44
    .local p0, "this":Lsun/misc/CompoundEnumeration;, "Lsun/misc/CompoundEnumeration<TE;>;"
    :goto_0
    iget v0, p0, Lsun/misc/CompoundEnumeration;->index:I

    iget-object v1, p0, Lsun/misc/CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 45
    iget-object v0, p0, Lsun/misc/CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    iget v1, p0, Lsun/misc/CompoundEnumeration;->index:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lsun/misc/CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    iget v1, p0, Lsun/misc/CompoundEnumeration;->index:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 46
    const/4 v0, 0x1

    return v0

    .line 48
    :cond_1d
    iget v0, p0, Lsun/misc/CompoundEnumeration;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/misc/CompoundEnumeration;->index:I

    goto :goto_0

    .line 50
    :cond_24
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 54
    .local p0, "this":Lsun/misc/CompoundEnumeration;, "Lsun/misc/CompoundEnumeration<TE;>;"
    invoke-direct {p0}, Lsun/misc/CompoundEnumeration;->next()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lsun/misc/CompoundEnumeration;, "Lsun/misc/CompoundEnumeration<TE;>;"
    invoke-direct {p0}, Lsun/misc/CompoundEnumeration;->next()Z

    move-result v0

    if-nez v0, :cond_c

    .line 59
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 61
    :cond_c
    iget-object v0, p0, Lsun/misc/CompoundEnumeration;->enums:[Ljava/util/Enumeration;

    iget v1, p0, Lsun/misc/CompoundEnumeration;->index:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
