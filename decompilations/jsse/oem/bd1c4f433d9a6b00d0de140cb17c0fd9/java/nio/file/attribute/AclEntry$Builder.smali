.class public final Ljava/nio/file/attribute/AclEntry$Builder;
.super Ljava/lang/Object;
.source "AclEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/file/attribute/AclEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/AclEntryFlag;",
            ">;"
        }
    .end annotation
.end field

.field private perms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/AclEntryPermission;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/nio/file/attribute/AclEntryType;

.field private who:Ljava/nio/file/attribute/UserPrincipal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/nio/file/attribute/AclEntry$Builder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/nio/file/attribute/AclEntry$Builder;->-assertionsDisabled:Z

    .line 98
    return-void
.end method

.method private constructor <init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;)V
    .registers 6
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
    .line 104
    .local p3, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryPermission;>;"
    .local p4, "flags":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryFlag;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-boolean v0, Ljava/nio/file/attribute/AclEntry$Builder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    if-eqz p3, :cond_b

    if-nez p4, :cond_11

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 110
    :cond_11
    iput-object p1, p0, Ljava/nio/file/attribute/AclEntry$Builder;->type:Ljava/nio/file/attribute/AclEntryType;

    .line 111
    iput-object p2, p0, Ljava/nio/file/attribute/AclEntry$Builder;->who:Ljava/nio/file/attribute/UserPrincipal;

    .line 112
    iput-object p3, p0, Ljava/nio/file/attribute/AclEntry$Builder;->perms:Ljava/util/Set;

    .line 113
    iput-object p4, p0, Ljava/nio/file/attribute/AclEntry$Builder;->flags:Ljava/util/Set;

    .line 114
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljava/nio/file/attribute/AclEntry$Builder;)V
    .registers 6
    .param p1, "type"    # Ljava/nio/file/attribute/AclEntryType;
    .param p2, "who"    # Ljava/nio/file/attribute/UserPrincipal;
    .param p3, "perms"    # Ljava/util/Set;
    .param p4, "flags"    # Ljava/util/Set;
    .param p5, "-this4"    # Ljava/nio/file/attribute/AclEntry$Builder;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/file/attribute/AclEntry$Builder;-><init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method private static checkSet(Ljava/util/Set;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 163
    .local v0, "e":Ljava/lang/Object;
    if-nez v0, :cond_16

    .line 164
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 165
    :cond_16
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 167
    .end local v0    # "e":Ljava/lang/Object;
    :cond_1a
    return-void
.end method


# virtual methods
.method public build()Ljava/nio/file/attribute/AclEntry;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 127
    iget-object v0, p0, Ljava/nio/file/attribute/AclEntry$Builder;->type:Ljava/nio/file/attribute/AclEntryType;

    if-nez v0, :cond_e

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Missing type component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_e
    iget-object v0, p0, Ljava/nio/file/attribute/AclEntry$Builder;->who:Ljava/nio/file/attribute/UserPrincipal;

    if-nez v0, :cond_1b

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Missing who component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1b
    new-instance v0, Ljava/nio/file/attribute/AclEntry;

    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry$Builder;->type:Ljava/nio/file/attribute/AclEntryType;

    iget-object v2, p0, Ljava/nio/file/attribute/AclEntry$Builder;->who:Ljava/nio/file/attribute/UserPrincipal;

    iget-object v3, p0, Ljava/nio/file/attribute/AclEntry$Builder;->perms:Ljava/util/Set;

    iget-object v4, p0, Ljava/nio/file/attribute/AclEntry$Builder;->flags:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/nio/file/attribute/AclEntry;-><init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljava/nio/file/attribute/AclEntry;)V

    return-object v0
.end method

.method public setFlags(Ljava/util/Set;)Ljava/nio/file/attribute/AclEntry$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/AclEntryFlag;",
            ">;)",
            "Ljava/nio/file/attribute/AclEntry$Builder;"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "flags":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryFlag;>;"
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 228
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    .line 235
    :goto_a
    iput-object p1, p0, Ljava/nio/file/attribute/AclEntry$Builder;->flags:Ljava/util/Set;

    .line 236
    return-object p0

    .line 231
    :cond_d
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    .line 232
    const-class v0, Ljava/nio/file/attribute/AclEntryFlag;

    invoke-static {p1, v0}, Ljava/nio/file/attribute/AclEntry$Builder;->checkSet(Ljava/util/Set;Ljava/lang/Class;)V

    goto :goto_a
.end method

.method public varargs setFlags([Ljava/nio/file/attribute/AclEntryFlag;)Ljava/nio/file/attribute/AclEntry$Builder;
    .registers 6
    .param p1, "flags"    # [Ljava/nio/file/attribute/AclEntryFlag;

    .prologue
    .line 248
    const-class v2, Ljava/nio/file/attribute/AclEntryFlag;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 250
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryFlag;>;"
    const/4 v2, 0x0

    array-length v3, p1

    :goto_8
    if-ge v2, v3, :cond_1a

    aget-object v0, p1, v2

    .line 251
    .local v0, "f":Ljava/nio/file/attribute/AclEntryFlag;
    if-nez v0, :cond_14

    .line 252
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 253
    :cond_14
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 255
    .end local v0    # "f":Ljava/nio/file/attribute/AclEntryFlag;
    :cond_1a
    iput-object v1, p0, Ljava/nio/file/attribute/AclEntry$Builder;->flags:Ljava/util/Set;

    .line 256
    return-object p0
.end method

.method public setPermissions(Ljava/util/Set;)Ljava/nio/file/attribute/AclEntry$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/AclEntryPermission;",
            ">;)",
            "Ljava/nio/file/attribute/AclEntry$Builder;"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryPermission;>;"
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 183
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    .line 190
    :goto_a
    iput-object p1, p0, Ljava/nio/file/attribute/AclEntry$Builder;->perms:Ljava/util/Set;

    .line 191
    return-object p0

    .line 186
    :cond_d
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    .line 187
    const-class v0, Ljava/nio/file/attribute/AclEntryPermission;

    invoke-static {p1, v0}, Ljava/nio/file/attribute/AclEntry$Builder;->checkSet(Ljava/util/Set;Ljava/lang/Class;)V

    goto :goto_a
.end method

.method public varargs setPermissions([Ljava/nio/file/attribute/AclEntryPermission;)Ljava/nio/file/attribute/AclEntry$Builder;
    .registers 6
    .param p1, "perms"    # [Ljava/nio/file/attribute/AclEntryPermission;

    .prologue
    .line 203
    const-class v2, Ljava/nio/file/attribute/AclEntryPermission;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 205
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryPermission;>;"
    const/4 v2, 0x0

    array-length v3, p1

    :goto_8
    if-ge v2, v3, :cond_1a

    aget-object v0, p1, v2

    .line 206
    .local v0, "p":Ljava/nio/file/attribute/AclEntryPermission;
    if-nez v0, :cond_14

    .line 207
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 208
    :cond_14
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 210
    .end local v0    # "p":Ljava/nio/file/attribute/AclEntryPermission;
    :cond_1a
    iput-object v1, p0, Ljava/nio/file/attribute/AclEntry$Builder;->perms:Ljava/util/Set;

    .line 211
    return-object p0
.end method

.method public setPrincipal(Ljava/nio/file/attribute/UserPrincipal;)Ljava/nio/file/attribute/AclEntry$Builder;
    .registers 3
    .param p1, "who"    # Ljava/nio/file/attribute/UserPrincipal;

    .prologue
    .line 154
    if-nez p1, :cond_8

    .line 155
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 156
    :cond_8
    iput-object p1, p0, Ljava/nio/file/attribute/AclEntry$Builder;->who:Ljava/nio/file/attribute/UserPrincipal;

    .line 157
    return-object p0
.end method

.method public setType(Ljava/nio/file/attribute/AclEntryType;)Ljava/nio/file/attribute/AclEntry$Builder;
    .registers 3
    .param p1, "type"    # Ljava/nio/file/attribute/AclEntryType;

    .prologue
    .line 141
    if-nez p1, :cond_8

    .line 142
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 143
    :cond_8
    iput-object p1, p0, Ljava/nio/file/attribute/AclEntry$Builder;->type:Ljava/nio/file/attribute/AclEntryType;

    .line 144
    return-object p0
.end method
