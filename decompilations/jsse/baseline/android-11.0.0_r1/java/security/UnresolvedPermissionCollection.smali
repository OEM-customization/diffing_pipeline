.class final Ljava/security/UnresolvedPermissionCollection;
.super Ljava/security/PermissionCollection;
.source "UnresolvedPermissionCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final whitelist serialVersionUID:J = -0x6396d132a67b4c70L


# instance fields
.field private transient blacklist perms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/UnresolvedPermission;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 147
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-class v2, Ljava/util/Hashtable;

    const-string v3, "permissions"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Ljava/security/UnresolvedPermissionCollection;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    .line 65
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 11
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 197
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 203
    .local v0, "gfields":Ljava/io/ObjectInputStream$GetField;
    nop

    .line 205
    const-string v1, "permissions"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    .line 206
    .local v1, "permissions":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    .line 209
    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 210
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 212
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Vector;

    .line 213
    .local v5, "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    iget-object v7, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;>;"
    .end local v5    # "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;"
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    goto :goto_23

    .line 219
    :cond_4d
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 9
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/Hashtable;

    iget-object v1, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    .line 164
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 167
    .local v0, "permissions":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;>;"
    monitor-enter p0

    .line 168
    :try_start_e
    iget-object v1, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 169
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/security/UnresolvedPermission;>;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 171
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/security/UnresolvedPermission;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 172
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    new-instance v5, Ljava/util/Vector;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/Vector;-><init>(I)V

    .line 173
    .local v5, "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;"
    monitor-enter v4
    :try_end_34
    .catchall {:try_start_e .. :try_end_34} :catchall_54

    .line 174
    :try_start_34
    invoke-virtual {v5, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 175
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_43

    .line 178
    :try_start_38
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_54

    .line 179
    nop

    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/security/UnresolvedPermission;>;>;"
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    .end local v5    # "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;"
    goto :goto_18

    .line 175
    .restart local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/security/UnresolvedPermission;>;>;"
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    .restart local v5    # "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;"
    :catchall_43
    move-exception v2

    :try_start_44
    monitor-exit v4
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    .end local v0    # "permissions":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;>;"
    .end local p0    # "this":Ljava/security/UnresolvedPermissionCollection;
    .end local p1    # "out":Ljava/io/ObjectOutputStream;
    :try_start_45
    throw v2

    .line 180
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/security/UnresolvedPermission;>;>;>;"
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/security/UnresolvedPermission;>;>;"
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    .end local v5    # "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;"
    .restart local v0    # "permissions":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/Vector<Ljava/security/UnresolvedPermission;>;>;"
    .restart local p0    # "this":Ljava/security/UnresolvedPermissionCollection;
    .restart local p1    # "out":Ljava/io/ObjectOutputStream;
    :cond_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_45 .. :try_end_47} :catchall_54

    .line 183
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    .line 184
    .local v1, "pfields":Ljava/io/ObjectOutputStream$PutField;
    const-string v2, "permissions"

    invoke-virtual {v1, v2, v0}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 186
    return-void

    .line 180
    .end local v1    # "pfields":Ljava/io/ObjectOutputStream$PutField;
    :catchall_54
    move-exception v1

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v1
.end method


# virtual methods
.method public whitelist core-platform-api test-api add(Ljava/security/Permission;)V
    .registers 6
    .param p1, "permission"    # Ljava/security/Permission;

    .line 76
    instance-of v0, p1, Ljava/security/UnresolvedPermission;

    if-eqz v0, :cond_32

    .line 79
    move-object v0, p1

    check-cast v0, Ljava/security/UnresolvedPermission;

    .line 82
    .local v0, "up":Ljava/security/UnresolvedPermission;
    monitor-enter p0

    .line 83
    :try_start_8
    iget-object v1, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/security/UnresolvedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 84
    .local v1, "v":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    if-nez v1, :cond_25

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 86
    iget-object v2, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/security/UnresolvedPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    .line 89
    monitor-enter v1

    .line 90
    :try_start_27
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    monitor-exit v1

    .line 92
    return-void

    .line 91
    :catchall_2c
    move-exception v2

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2c

    throw v2

    .line 88
    .end local v1    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1

    .line 77
    .end local v0    # "up":Ljava/security/UnresolvedPermission;
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api elements()Ljava/util/Enumeration;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Ljava/security/Permission;>;"
    monitor-enter p0

    .line 126
    :try_start_6
    iget-object v1, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 127
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    monitor-enter v2
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_2b

    .line 128
    :try_start_1d
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    monitor-exit v2

    .line 130
    .end local v2    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    goto :goto_10

    .line 129
    .restart local v2    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/security/Permission;>;"
    .end local p0    # "this":Ljava/security/UnresolvedPermissionCollection;
    :try_start_24
    throw v1

    .line 131
    .end local v2    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    .restart local v0    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/security/Permission;>;"
    .restart local p0    # "this":Ljava/security/UnresolvedPermissionCollection;
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_2b

    .line 133
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    return-object v1

    .line 131
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method blacklist getUnresolvedPermissions(Ljava/security/Permission;)Ljava/util/List;
    .registers 4
    .param p1, "p"    # Ljava/security/Permission;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Permission;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/UnresolvedPermission;",
            ">;"
        }
    .end annotation

    .line 99
    monitor-enter p0

    .line 100
    :try_start_1
    iget-object v0, p0, Ljava/security/UnresolvedPermissionCollection;->perms:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit p0

    return-object v0

    .line 101
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public whitelist core-platform-api test-api implies(Ljava/security/Permission;)Z
    .registers 3
    .param p1, "permission"    # Ljava/security/Permission;

    .line 110
    const/4 v0, 0x0

    return v0
.end method
