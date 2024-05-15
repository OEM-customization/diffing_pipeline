.class Ljava/lang/ProcessEnvironment$Value;
.super Ljava/lang/ProcessEnvironment$ExternalData;
.source "ProcessEnvironment.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ProcessEnvironment$ExternalData;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/ProcessEnvironment$Value;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;[B)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Ljava/lang/ProcessEnvironment$ExternalData;-><init>(Ljava/lang/String;[B)V

    .line 192
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Value;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-static {p0}, Ljava/lang/ProcessEnvironment;->-wrap3(Ljava/lang/String;)V

    .line 204
    invoke-static {p0}, Ljava/lang/ProcessEnvironment$Value;->valueOfQueryOnly(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Value;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf([B)Ljava/lang/ProcessEnvironment$Value;
    .registers 3
    .param p0, "bytes"    # [B

    .prologue
    .line 208
    new-instance v0, Ljava/lang/ProcessEnvironment$Value;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1, p0}, Ljava/lang/ProcessEnvironment$Value;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Value;
    .registers 2
    .param p0, "str"    # Ljava/lang/Object;

    .prologue
    .line 195
    check-cast p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/ProcessEnvironment$Value;->valueOfQueryOnly(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Value;

    move-result-object v0

    return-object v0
.end method

.method public static valueOfQueryOnly(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Value;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 199
    new-instance v0, Ljava/lang/ProcessEnvironment$Value;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/ProcessEnvironment$Value;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 211
    check-cast p1, Ljava/lang/ProcessEnvironment$Value;

    invoke-virtual {p0, p1}, Ljava/lang/ProcessEnvironment$Value;->compareTo(Ljava/lang/ProcessEnvironment$Value;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/ProcessEnvironment$Value;)I
    .registers 4
    .param p1, "value"    # Ljava/lang/ProcessEnvironment$Value;

    .prologue
    .line 212
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$Value;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/ProcessEnvironment$Value;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/ProcessEnvironment;->-wrap1([B[B)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 216
    instance-of v0, p1, Ljava/lang/ProcessEnvironment$Value;

    if-eqz v0, :cond_9

    invoke-super {p0, p1}, Ljava/lang/ProcessEnvironment$ExternalData;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
