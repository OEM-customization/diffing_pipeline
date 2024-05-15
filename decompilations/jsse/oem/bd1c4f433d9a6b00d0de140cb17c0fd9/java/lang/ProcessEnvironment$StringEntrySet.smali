.class Ljava/lang/ProcessEnvironment$StringEntrySet;
.super Ljava/util/AbstractSet;
.source "ProcessEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Ljava/lang/ProcessEnvironment$StringEntrySet;)Ljava/util/Set;
    .registers 2
    .param p0, "-this"    # Ljava/lang/ProcessEnvironment$StringEntrySet;

    .prologue
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    return-object v0
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/ProcessEnvironment$Variable;Ljava/lang/ProcessEnvironment$Value;>;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    return-void
.end method

.method private static vvEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    instance-of v0, p0, Ljava/lang/ProcessEnvironment$StringEntry;

    if-eqz v0, :cond_b

    .line 340
    check-cast p0, Ljava/lang/ProcessEnvironment$StringEntry;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/ProcessEnvironment$StringEntry;->-get0(Ljava/lang/ProcessEnvironment$StringEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    .line 341
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_b
    new-instance v0, Ljava/lang/ProcessEnvironment$StringEntrySet$2;

    invoke-direct {v0, p0}, Ljava/lang/ProcessEnvironment$StringEntrySet$2;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 353
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$StringEntrySet;->vvEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 356
    instance-of v0, p1, Ljava/lang/ProcessEnvironment$StringEntrySet;

    if-eqz v0, :cond_f

    .line 357
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    check-cast p1, Ljava/lang/ProcessEnvironment$StringEntrySet;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 356
    :goto_e
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 329
    new-instance v0, Ljava/lang/ProcessEnvironment$StringEntrySet$1;

    invoke-direct {v0, p0}, Ljava/lang/ProcessEnvironment$StringEntrySet$1;-><init>(Ljava/lang/ProcessEnvironment$StringEntrySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 354
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$StringEntrySet;->vvEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
