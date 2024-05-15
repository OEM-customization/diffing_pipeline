.class public final Ljava/nio/file/attribute/AclEntry;
.super Ljava/lang/Object;
.source "AclEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/file/attribute/AclEntry$Builder;
    }
.end annotation


# instance fields
.field private final flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/AclEntryFlag;",
            ">;"
        }
    .end annotation
.end field

.field private volatile hash:I

.field private final perms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/AclEntryPermission;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Ljava/nio/file/attribute/AclEntryType;

.field private final who:Ljava/nio/file/attribute/UserPrincipal;


# direct methods
.method private constructor <init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;)V
    .registers 5
    .param p1, "type"    # Ljava/nio/file/attribute/AclEntryType;
    .param p2, "who"    # Ljava/nio/file/attribute/UserPrincipal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/attribute/AclEntryType;",
            "Ljava/nio/file/attribute/UserPrincipal;",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/AclEntryPermission;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/AclEntryFlag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p3, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryPermission;>;"
    .local p4, "flags":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryFlag;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Ljava/nio/file/attribute/AclEntry;->type:Ljava/nio/file/attribute/AclEntryType;

    .line 81
    iput-object p2, p0, Ljava/nio/file/attribute/AclEntry;->who:Ljava/nio/file/attribute/UserPrincipal;

    .line 82
    iput-object p3, p0, Ljava/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    .line 83
    iput-object p4, p0, Ljava/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljava/nio/file/attribute/AclEntry;)V
    .registers 6
    .param p1, "type"    # Ljava/nio/file/attribute/AclEntryType;
    .param p2, "who"    # Ljava/nio/file/attribute/UserPrincipal;
    .param p3, "perms"    # Ljava/util/Set;
    .param p4, "flags"    # Ljava/util/Set;
    .param p5, "-this4"    # Ljava/nio/file/attribute/AclEntry;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/file/attribute/AclEntry;-><init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method private static hash(ILjava/lang/Object;)I
    .registers 4
    .param p0, "h"    # I
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 360
    mul-int/lit8 v0, p0, 0x7f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static newBuilder()Ljava/nio/file/attribute/AclEntry$Builder;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 268
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 269
    .local v3, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryPermission;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    .line 270
    .local v4, "flags":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryFlag;>;"
    new-instance v0, Ljava/nio/file/attribute/AclEntry$Builder;

    move-object v2, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Ljava/nio/file/attribute/AclEntry$Builder;-><init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljava/nio/file/attribute/AclEntry$Builder;)V

    return-object v0
.end method

.method public static newBuilder(Ljava/nio/file/attribute/AclEntry;)Ljava/nio/file/attribute/AclEntry$Builder;
    .registers 7
    .param p0, "entry"    # Ljava/nio/file/attribute/AclEntry;

    .prologue
    .line 280
    new-instance v0, Ljava/nio/file/attribute/AclEntry$Builder;

    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->type:Ljava/nio/file/attribute/AclEntryType;

    iget-object v2, p0, Ljava/nio/file/attribute/AclEntry;->who:Ljava/nio/file/attribute/UserPrincipal;

    iget-object v3, p0, Ljava/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    iget-object v4, p0, Ljava/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/nio/file/attribute/AclEntry$Builder;-><init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljava/nio/file/attribute/AclEntry$Builder;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 343
    if-ne p1, p0, :cond_5

    .line 344
    return v4

    .line 345
    :cond_5
    if-eqz p1, :cond_d

    instance-of v1, p1, Ljava/nio/file/attribute/AclEntry;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e

    .line 346
    :cond_d
    return v3

    :cond_e
    move-object v0, p1

    .line 347
    check-cast v0, Ljava/nio/file/attribute/AclEntry;

    .line 348
    .local v0, "other":Ljava/nio/file/attribute/AclEntry;
    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->type:Ljava/nio/file/attribute/AclEntryType;

    iget-object v2, v0, Ljava/nio/file/attribute/AclEntry;->type:Ljava/nio/file/attribute/AclEntryType;

    if-eq v1, v2, :cond_18

    .line 349
    return v3

    .line 350
    :cond_18
    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->who:Ljava/nio/file/attribute/UserPrincipal;

    iget-object v2, v0, Ljava/nio/file/attribute/AclEntry;->who:Ljava/nio/file/attribute/UserPrincipal;

    invoke-interface {v1, v2}, Ljava/nio/file/attribute/UserPrincipal;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 351
    return v3

    .line 352
    :cond_23
    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    iget-object v2, v0, Ljava/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 353
    return v3

    .line 354
    :cond_2e
    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    iget-object v2, v0, Ljava/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 355
    return v3

    .line 356
    :cond_39
    return v4
.end method

.method public flags()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/AclEntryFlag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 372
    iget v1, p0, Ljava/nio/file/attribute/AclEntry;->hash:I

    if-eqz v1, :cond_7

    .line 373
    iget v1, p0, Ljava/nio/file/attribute/AclEntry;->hash:I

    return v1

    .line 374
    :cond_7
    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->type:Ljava/nio/file/attribute/AclEntryType;

    invoke-virtual {v1}, Ljava/nio/file/attribute/AclEntryType;->hashCode()I

    move-result v0

    .line 375
    .local v0, "h":I
    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->who:Ljava/nio/file/attribute/UserPrincipal;

    invoke-static {v0, v1}, Ljava/nio/file/attribute/AclEntry;->hash(ILjava/lang/Object;)I

    move-result v0

    .line 376
    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/nio/file/attribute/AclEntry;->hash(ILjava/lang/Object;)I

    move-result v0

    .line 377
    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/nio/file/attribute/AclEntry;->hash(ILjava/lang/Object;)I

    move-result v0

    .line 378
    iput v0, p0, Ljava/nio/file/attribute/AclEntry;->hash:I

    .line 379
    iget v1, p0, Ljava/nio/file/attribute/AclEntry;->hash:I

    return v1
.end method

.method public permissions()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/AclEntryPermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public principal()Ljava/nio/file/attribute/UserPrincipal;
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Ljava/nio/file/attribute/AclEntry;->who:Ljava/nio/file/attribute/UserPrincipal;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    const/16 v7, 0x2f

    const/16 v6, 0x3a

    .line 389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Ljava/nio/file/attribute/AclEntry;->who:Ljava/nio/file/attribute/UserPrincipal;

    invoke-interface {v5}, Ljava/nio/file/attribute/UserPrincipal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 396
    iget-object v5, p0, Ljava/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "perm$iterator":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/attribute/AclEntryPermission;

    .line 397
    .local v2, "perm":Ljava/nio/file/attribute/AclEntryPermission;
    invoke-virtual {v2}, Ljava/nio/file/attribute/AclEntryPermission;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 400
    .end local v2    # "perm":Ljava/nio/file/attribute/AclEntryPermission;
    :cond_32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 401
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 404
    iget-object v5, p0, Ljava/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6f

    .line 405
    iget-object v5, p0, Ljava/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "flag$iterator":Ljava/util/Iterator;
    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/AclEntryFlag;

    .line 406
    .local v0, "flag":Ljava/nio/file/attribute/AclEntryFlag;
    invoke-virtual {v0}, Ljava/nio/file/attribute/AclEntryFlag;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 409
    .end local v0    # "flag":Ljava/nio/file/attribute/AclEntryFlag;
    :cond_63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 410
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    .end local v1    # "flag$iterator":Ljava/util/Iterator;
    :cond_6f
    iget-object v5, p0, Ljava/nio/file/attribute/AclEntry;->type:Ljava/nio/file/attribute/AclEntryType;

    invoke-virtual {v5}, Ljava/nio/file/attribute/AclEntryType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public type()Ljava/nio/file/attribute/AclEntryType;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Ljava/nio/file/attribute/AclEntry;->type:Ljava/nio/file/attribute/AclEntryType;

    return-object v0
.end method
