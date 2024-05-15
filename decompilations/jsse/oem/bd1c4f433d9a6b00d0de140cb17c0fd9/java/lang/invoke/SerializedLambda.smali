.class public final Ljava/lang/invoke/SerializedLambda;
.super Ljava/lang/Object;
.source "SerializedLambda.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 11
    .param p2, "functionalInterfaceClass"    # Ljava/lang/String;
    .param p3, "functionalInterfaceMethodName"    # Ljava/lang/String;
    .param p4, "functionalInterfaceMethodSignature"    # Ljava/lang/String;
    .param p5, "implMethodKind"    # I
    .param p6, "implClass"    # Ljava/lang/String;
    .param p7, "implMethodName"    # Ljava/lang/String;
    .param p8, "implMethodSignature"    # Ljava/lang/String;
    .param p9, "instantiatedMethodType"    # Ljava/lang/String;
    .param p10, "capturedArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "capturingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public getCapturedArg(I)Ljava/lang/Object;
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCapturedArgCount()I
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getCapturingClass()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFunctionalInterfaceClass()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFunctionalInterfaceMethodName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFunctionalInterfaceMethodSignature()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImplClass()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImplMethodKind()I
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getImplMethodName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImplMethodSignature()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getInstantiatedMethodType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method
