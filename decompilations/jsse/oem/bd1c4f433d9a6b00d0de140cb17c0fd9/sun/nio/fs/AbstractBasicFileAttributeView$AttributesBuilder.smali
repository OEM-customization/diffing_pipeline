.class Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;
.super Ljava/lang/Object;
.source "AbstractBasicFileAttributeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/AbstractBasicFileAttributeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttributesBuilder"
.end annotation


# instance fields
.field private copyAll:Z

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private names:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;[Ljava/lang/String;)V
    .registers 7
    .param p2, "requested"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "allowed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->names:Ljava/util/Set;

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->map:Ljava/util/Map;

    .line 97
    const/4 v1, 0x0

    array-length v2, p2

    :goto_13
    if-ge v1, v2, :cond_53

    aget-object v0, p2, v1

    .line 98
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 99
    const/4 v3, 0x1

    iput-boolean v3, p0, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->copyAll:Z

    .line 97
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 101
    :cond_26
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 102
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' not recognized"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_4d
    iget-object v3, p0, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->names:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 106
    .end local v0    # "name":Ljava/lang/String;
    :cond_53
    return-void
.end method

.method static create(Ljava/util/Set;[Ljava/lang/String;)Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;
    .registers 3
    .param p1, "requested"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "allowed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;

    invoke-direct {v0, p0, p1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;-><init>(Ljava/util/Set;[Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method add(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 123
    iget-object v0, p0, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method

.method match(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-boolean v0, p0, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->copyAll:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->names:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method unmodifiableMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->map:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
