.class abstract Ljava/lang/ProcessEnvironment$ExternalData;
.super Ljava/lang/Object;
.source "ProcessEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ExternalData"
.end annotation


# instance fields
.field protected final bytes:[B

.field protected final str:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;[B)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Ljava/lang/ProcessEnvironment$ExternalData;->str:Ljava/lang/String;

    .line 133
    iput-object p2, p0, Ljava/lang/ProcessEnvironment$ExternalData;->bytes:[B

    .line 134
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 145
    instance-of v0, p1, Ljava/lang/ProcessEnvironment$ExternalData;

    if-eqz v0, :cond_13

    .line 146
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$ExternalData;->getBytes()[B

    move-result-object v0

    check-cast p1, Ljava/lang/ProcessEnvironment$ExternalData;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/ProcessEnvironment$ExternalData;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/ProcessEnvironment;->-wrap0([B[B)Z

    move-result v0

    .line 145
    :goto_12
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getBytes()[B
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$ExternalData;->bytes:[B

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 150
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$ExternalData;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/lang/ProcessEnvironment;->-wrap2([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$ExternalData;->str:Ljava/lang/String;

    return-object v0
.end method
