.class abstract Lsun/nio/fs/AbstractUserDefinedFileAttributeView;
.super Ljava/lang/Object;
.source "AbstractUserDefinedFileAttributeView.java"

# interfaces
.implements Ljava/nio/file/attribute/UserDefinedFileAttributeView;
.implements Lsun/nio/fs/DynamicFileAttributeView;


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/nio/fs/AbstractUserDefinedFileAttributeView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/fs/AbstractUserDefinedFileAttributeView;->-assertionsDisabled:Z

    .line 37
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkAccess(Ljava/lang/String;ZZ)V
    .registers 7
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "checkRead"    # Z
    .param p3, "checkWrite"    # Z

    .prologue
    .line 46
    sget-boolean v1, Lsun/nio/fs/AbstractUserDefinedFileAttributeView;->-assertionsDisabled:Z

    if-nez v1, :cond_11

    if-nez p2, :cond_f

    move v1, p3

    :goto_7
    if-nez v1, :cond_11

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_f
    const/4 v1, 0x1

    goto :goto_7

    .line 47
    :cond_11
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 48
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_2c

    .line 49
    if-eqz p2, :cond_1c

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 51
    :cond_1c
    if-eqz p3, :cond_21

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 53
    :cond_21
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "accessUserDefinedAttributes"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 55
    :cond_2c
    return-void
.end method

.method public final name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    const-string/jumbo v0, "user"

    return-object v0
.end method

.method public final readAttributes([Ljava/lang/String;)Ljava/util/Map;
    .registers 13
    .param p1, "attributes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 80
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v4, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v9, p1

    :goto_7
    if-ge v8, v9, :cond_18

    aget-object v2, p1, v8

    .line 82
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v10, "*"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_42

    .line 83
    invoke-virtual {p0}, Lsun/nio/fs/AbstractUserDefinedFileAttributeView;->list()Ljava/util/List;

    move-result-object v4

    .line 93
    .end local v2    # "name":Ljava/lang/String;
    :cond_18
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v5, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "name$iterator":Ljava/util/Iterator;
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    .restart local v2    # "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lsun/nio/fs/AbstractUserDefinedFileAttributeView;->size(Ljava/lang/String;)I

    move-result v6

    .line 96
    .local v6, "size":I
    new-array v0, v6, [B

    .line 97
    .local v0, "buf":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {p0, v2, v8}, Lsun/nio/fs/AbstractUserDefinedFileAttributeView;->read(Ljava/lang/String;Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 98
    .local v1, "n":I
    if-ne v1, v6, :cond_54

    move-object v7, v0

    .line 99
    .local v7, "value":[B
    :goto_3e
    invoke-interface {v5, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 86
    .end local v0    # "buf":[B
    .end local v1    # "n":I
    .end local v3    # "name$iterator":Ljava/util/Iterator;
    .end local v5    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "size":I
    .end local v7    # "value":[B
    :cond_42
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4e

    .line 87
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 88
    :cond_4e
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 98
    .restart local v0    # "buf":[B
    .restart local v1    # "n":I
    .restart local v3    # "name$iterator":Ljava/util/Iterator;
    .restart local v5    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v6    # "size":I
    :cond_54
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    .restart local v7    # "value":[B
    goto :goto_3e

    .line 101
    .end local v0    # "buf":[B
    .end local v1    # "n":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "size":I
    .end local v7    # "value":[B
    :cond_59
    return-object v5
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    instance-of v1, p2, [B

    if-eqz v1, :cond_e

    .line 68
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 72
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :goto_a
    invoke-virtual {p0, p1, v0}, Lsun/nio/fs/AbstractUserDefinedFileAttributeView;->write(Ljava/lang/String;Ljava/nio/ByteBuffer;)I

    .line 73
    return-void

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_e
    move-object v0, p2

    .line 70
    check-cast v0, Ljava/nio/ByteBuffer;

    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    goto :goto_a
.end method
