.class Ljava/util/EnumSet$SerializationProxy;
.super Ljava/lang/Object;
.source "EnumSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x507d3db7654cad1L


# instance fields
.field private final elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final elements:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/EnumSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p0, "this":Ljava/util/EnumSet$SerializationProxy;, "Ljava/util/EnumSet$SerializationProxy<TE;>;"
    .local p1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iget-object v0, p1, Ljava/util/EnumSet;->elementType:Ljava/lang/Class;

    iput-object v0, p0, Ljava/util/EnumSet$SerializationProxy;->elementType:Ljava/lang/Class;

    .line 438
    invoke-static {}, Ljava/util/EnumSet;->-get0()[Ljava/lang/Enum;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    iput-object v0, p0, Ljava/util/EnumSet$SerializationProxy;->elements:[Ljava/lang/Enum;

    .line 439
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 6

    .prologue
    .line 445
    .local p0, "this":Ljava/util/EnumSet$SerializationProxy;, "Ljava/util/EnumSet$SerializationProxy<TE;>;"
    iget-object v2, p0, Ljava/util/EnumSet$SerializationProxy;->elementType:Ljava/lang/Class;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 446
    .local v1, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    iget-object v3, p0, Ljava/util/EnumSet$SerializationProxy;->elements:[Ljava/lang/Enum;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_a
    if-ge v2, v4, :cond_14

    aget-object v0, v3, v2

    .line 447
    .local v0, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 446
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 448
    .end local v0    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_14
    return-object v1
.end method
