.class public final Ljava/lang/Boolean;
.super Ljava/lang/Object;
.source "Boolean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final whitelist test-api FALSE:Ljava/lang/Boolean;

.field public static final whitelist test-api TRUE:Ljava/lang/Boolean;

.field public static final whitelist test-api TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = -0x32df8d7f2a630512L


# instance fields
.field private final greylist-max-p value:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 56
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 64
    const-string v0, "boolean"

    invoke-static {v0}, Ljava/lang/Class;->getPrimitiveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 105
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Ljava/lang/Boolean;-><init>(Z)V

    .line 106
    return-void
.end method

.method public constructor whitelist test-api <init>(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean p1, p0, Ljava/lang/Boolean;->value:Z

    .line 89
    return-void
.end method

.method public static whitelist test-api compare(ZZ)I
    .registers 3
    .param p0, "x"    # Z
    .param p1, "y"    # Z

    .line 291
    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    if-eqz p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, -0x1

    :goto_9
    return v0
.end method

.method public static whitelist test-api getBoolean(Ljava/lang/String;)Z
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, "result":Z
    :try_start_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_9} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_9} :catch_b

    move v0, v1

    .line 256
    goto :goto_c

    .line 255
    :catch_b
    move-exception v1

    .line 257
    :goto_c
    return v0
.end method

.method public static whitelist test-api hashCode(Z)I
    .registers 2
    .param p0, "value"    # Z

    .line 213
    if-eqz p0, :cond_5

    const/16 v0, 0x4cf

    goto :goto_7

    :cond_5
    const/16 v0, 0x4d5

    :goto_7
    return v0
.end method

.method public static whitelist test-api logicalAnd(ZZ)Z
    .registers 3
    .param p0, "a"    # Z
    .param p1, "b"    # Z

    .line 305
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist test-api logicalOr(ZZ)Z
    .registers 3
    .param p0, "a"    # Z
    .param p1, "b"    # Z

    .line 319
    if-nez p0, :cond_7

    if-eqz p1, :cond_5

    goto :goto_7

    :cond_5
    const/4 v0, 0x0

    goto :goto_8

    :cond_7
    :goto_7
    const/4 v0, 0x1

    :goto_8
    return v0
.end method

.method public static whitelist test-api logicalXor(ZZ)Z
    .registers 3
    .param p0, "a"    # Z
    .param p1, "b"    # Z

    .line 333
    xor-int v0, p0, p1

    return v0
.end method

.method public static whitelist test-api parseBoolean(Ljava/lang/String;)Z
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 122
    if-eqz p0, :cond_c

    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static whitelist test-api toString(Z)Ljava/lang/String;
    .registers 2
    .param p0, "b"    # Z

    .line 177
    if-eqz p0, :cond_5

    const-string v0, "true"

    goto :goto_7

    :cond_5
    const-string v0, "false"

    :goto_7
    return-object v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 163
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_b

    :cond_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_b
    return-object v0
.end method

.method public static whitelist test-api valueOf(Z)Ljava/lang/Boolean;
    .registers 2
    .param p0, "b"    # Z

    .line 150
    if-eqz p0, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_7
    return-object v0
.end method


# virtual methods
.method public whitelist test-api booleanValue()Z
    .registers 2

    .line 132
    iget-boolean v0, p0, Ljava/lang/Boolean;->value:Z

    return v0
.end method

.method public whitelist test-api compareTo(Ljava/lang/Boolean;)I
    .registers 4
    .param p1, "b"    # Ljava/lang/Boolean;

    .line 273
    iget-boolean v0, p0, Ljava/lang/Boolean;->value:Z

    iget-boolean v1, p1, Ljava/lang/Boolean;->value:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 43
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 226
    instance-of v0, p1, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 227
    iget-boolean v0, p0, Ljava/lang/Boolean;->value:Z

    move-object v2, p1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v0, v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1

    .line 229
    :cond_12
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 201
    iget-boolean v0, p0, Ljava/lang/Boolean;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 189
    iget-boolean v0, p0, Ljava/lang/Boolean;->value:Z

    if-eqz v0, :cond_7

    const-string v0, "true"

    goto :goto_9

    :cond_7
    const-string v0, "false"

    :goto_9
    return-object v0
.end method
