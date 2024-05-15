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
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final FALSE:Ljava/lang/Boolean;

.field public static final TRUE:Ljava/lang/Boolean;

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x32df8d7f2a630512L


# instance fields
.field private final value:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
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
    const-class v0, [Z

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Ljava/lang/Boolean;-><init>(Z)V

    .line 106
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean p1, p0, Ljava/lang/Boolean;->value:Z

    .line 89
    return-void
.end method

.method public static compare(ZZ)I
    .registers 3
    .param p0, "x"    # Z
    .param p1, "y"    # Z

    .prologue
    .line 291
    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    if-eqz p0, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, -0x1

    goto :goto_3
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 252
    const/4 v1, 0x0

    .line 254
    .local v1, "result":Z
    :try_start_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_a

    move-result v1

    .line 257
    .end local v1    # "result":Z
    :goto_9
    return v1

    .line 255
    .restart local v1    # "result":Z
    :catch_a
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_9
.end method

.method public static hashCode(Z)I
    .registers 2
    .param p0, "value"    # Z

    .prologue
    .line 213
    if-eqz p0, :cond_5

    const/16 v0, 0x4cf

    :goto_4
    return v0

    :cond_5
    const/16 v0, 0x4d5

    goto :goto_4
.end method

.method public static logicalAnd(ZZ)Z
    .registers 2
    .param p0, "a"    # Z
    .param p1, "b"    # Z

    .prologue
    .line 305
    if-eqz p0, :cond_3

    .end local p1    # "b":Z
    :goto_2
    return p1

    .restart local p1    # "b":Z
    :cond_3
    const/4 p1, 0x0

    goto :goto_2
.end method

.method public static logicalOr(ZZ)Z
    .registers 2
    .param p0, "a"    # Z
    .param p1, "b"    # Z

    .prologue
    .line 319
    if-nez p0, :cond_3

    .end local p1    # "b":Z
    :goto_2
    return p1

    .restart local p1    # "b":Z
    :cond_3
    const/4 p1, 0x1

    goto :goto_2
.end method

.method public static logicalXor(ZZ)Z
    .registers 3
    .param p0, "a"    # Z
    .param p1, "b"    # Z

    .prologue
    .line 333
    xor-int v0, p0, p1

    return v0
.end method

.method public static parseBoolean(Ljava/lang/String;)Z
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 122
    if-eqz p0, :cond_a

    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static toString(Z)Ljava/lang/String;
    .registers 2
    .param p0, "b"    # Z

    .prologue
    .line 177
    if-eqz p0, :cond_6

    const-string/jumbo v0, "true"

    :goto_5
    return-object v0

    :cond_6
    const-string/jumbo v0, "false"

    goto :goto_5
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_8
.end method

.method public static valueOf(Z)Ljava/lang/Boolean;
    .registers 2
    .param p0, "b"    # Z

    .prologue
    .line 150
    if-eqz p0, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method


# virtual methods
.method public booleanValue()Z
    .registers 2

    .prologue
    .line 132
    iget-boolean v0, p0, Ljava/lang/Boolean;->value:Z

    return v0
.end method

.method public compareTo(Ljava/lang/Boolean;)I
    .registers 4
    .param p1, "b"    # Ljava/lang/Boolean;

    .prologue
    .line 273
    iget-boolean v0, p0, Ljava/lang/Boolean;->value:Z

    iget-boolean v1, p1, Ljava/lang/Boolean;->value:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 260
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 226
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_11

    .line 227
    iget-boolean v1, p0, Ljava/lang/Boolean;->value:Z

    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 229
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_11
    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 201
    iget-boolean v0, p0, Ljava/lang/Boolean;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    iget-boolean v0, p0, Ljava/lang/Boolean;->value:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "true"

    :goto_7
    return-object v0

    :cond_8
    const-string/jumbo v0, "false"

    goto :goto_7
.end method
