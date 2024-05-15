.class Ljava/lang/ProcessEnvironment$Variable;
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
    name = "Variable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ProcessEnvironment$ExternalData;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/ProcessEnvironment$Variable;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;[B)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/ProcessEnvironment$ExternalData;-><init>(Ljava/lang/String;[B)V

    .line 159
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Variable;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 170
    # invokes: Ljava/lang/ProcessEnvironment;->validateVariable(Ljava/lang/String;)V
    invoke-static {p0}, Ljava/lang/ProcessEnvironment;->access$200(Ljava/lang/String;)V

    .line 171
    invoke-static {p0}, Ljava/lang/ProcessEnvironment$Variable;->valueOfQueryOnly(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Variable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist valueOf([B)Ljava/lang/ProcessEnvironment$Variable;
    .registers 3
    .param p0, "bytes"    # [B

    .line 175
    new-instance v0, Ljava/lang/ProcessEnvironment$Variable;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1, p0}, Ljava/lang/ProcessEnvironment$Variable;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static blacklist valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Variable;
    .registers 2
    .param p0, "str"    # Ljava/lang/Object;

    .line 162
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/ProcessEnvironment$Variable;->valueOfQueryOnly(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Variable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist valueOfQueryOnly(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Variable;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 166
    new-instance v0, Ljava/lang/ProcessEnvironment$Variable;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/ProcessEnvironment$Variable;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic whitelist core-platform-api test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 154
    check-cast p1, Ljava/lang/ProcessEnvironment$Variable;

    invoke-virtual {p0, p1}, Ljava/lang/ProcessEnvironment$Variable;->compareTo(Ljava/lang/ProcessEnvironment$Variable;)I

    move-result p1

    return p1
.end method

.method public blacklist compareTo(Ljava/lang/ProcessEnvironment$Variable;)I
    .registers 4
    .param p1, "variable"    # Ljava/lang/ProcessEnvironment$Variable;

    .line 179
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$Variable;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/ProcessEnvironment$Variable;->getBytes()[B

    move-result-object v1

    # invokes: Ljava/lang/ProcessEnvironment;->arrayCompare([B[B)I
    invoke-static {v0, v1}, Ljava/lang/ProcessEnvironment;->access$300([B[B)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 183
    instance-of v0, p1, Ljava/lang/ProcessEnvironment$Variable;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Ljava/lang/ProcessEnvironment$ExternalData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
