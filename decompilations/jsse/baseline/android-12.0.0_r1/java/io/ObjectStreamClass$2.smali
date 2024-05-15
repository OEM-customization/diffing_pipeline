.class Ljava/io/ObjectStreamClass$2;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ObjectStreamClass;-><init>(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/io/ObjectStreamClass;

.field final synthetic blacklist val$cl:Ljava/lang/Class;


# direct methods
.method constructor blacklist <init>(Ljava/io/ObjectStreamClass;Ljava/lang/Class;)V
    .registers 3
    .param p1, "this$0"    # Ljava/io/ObjectStreamClass;

    .line 480
    iput-object p1, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iput-object p2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 480
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$2;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 9

    .line 482
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    # getter for: Ljava/io/ObjectStreamClass;->isEnum:Z
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->access$400(Ljava/io/ObjectStreamClass;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 483
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    # setter for: Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;
    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->access$502(Ljava/io/ObjectStreamClass;Ljava/lang/Long;)Ljava/lang/Long;

    .line 484
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    sget-object v2, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    # setter for: Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;
    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->access$602(Ljava/io/ObjectStreamClass;[Ljava/io/ObjectStreamField;)[Ljava/io/ObjectStreamField;

    .line 485
    return-object v1

    .line 487
    :cond_1c
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 488
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    sget-object v2, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    # setter for: Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;
    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->access$602(Ljava/io/ObjectStreamClass;[Ljava/io/ObjectStreamField;)[Ljava/io/ObjectStreamField;

    .line 489
    return-object v1

    .line 492
    :cond_2c
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    # invokes: Ljava/io/ObjectStreamClass;->getDeclaredSUID(Ljava/lang/Class;)Ljava/lang/Long;
    invoke-static {v2}, Ljava/io/ObjectStreamClass;->access$700(Ljava/lang/Class;)Ljava/lang/Long;

    move-result-object v2

    # setter for: Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;
    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->access$502(Ljava/io/ObjectStreamClass;Ljava/lang/Long;)Ljava/lang/Long;

    .line 494
    :try_start_37
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    # invokes: Ljava/io/ObjectStreamClass;->getSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;
    invoke-static {v2}, Ljava/io/ObjectStreamClass;->access$800(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;

    move-result-object v2

    # setter for: Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;
    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->access$602(Ljava/io/ObjectStreamClass;[Ljava/io/ObjectStreamField;)[Ljava/io/ObjectStreamField;

    .line 495
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    # invokes: Ljava/io/ObjectStreamClass;->computeFieldOffsets()V
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->access$900(Ljava/io/ObjectStreamClass;)V
    :try_end_47
    .catch Ljava/io/InvalidClassException; {:try_start_37 .. :try_end_47} :catch_48

    .line 500
    goto :goto_64

    .line 496
    :catch_48
    move-exception v0

    .line 497
    .local v0, "e":Ljava/io/InvalidClassException;
    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    new-instance v3, Ljava/io/ObjectStreamClass$ExceptionInfo;

    iget-object v4, v0, Ljava/io/InvalidClassException;->classname:Ljava/lang/String;

    .line 498
    invoke-virtual {v0}, Ljava/io/InvalidClassException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    # setter for: Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;
    invoke-static {v2, v3}, Ljava/io/ObjectStreamClass;->access$1102(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass$ExceptionInfo;)Ljava/io/ObjectStreamClass$ExceptionInfo;

    move-result-object v3

    # setter for: Ljava/io/ObjectStreamClass;->serializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;
    invoke-static {v2, v3}, Ljava/io/ObjectStreamClass;->access$1002(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass$ExceptionInfo;)Ljava/io/ObjectStreamClass$ExceptionInfo;

    .line 499
    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    sget-object v3, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    # setter for: Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;
    invoke-static {v2, v3}, Ljava/io/ObjectStreamClass;->access$602(Ljava/io/ObjectStreamClass;[Ljava/io/ObjectStreamField;)[Ljava/io/ObjectStreamField;

    .line 502
    .end local v0    # "e":Ljava/io/InvalidClassException;
    :goto_64
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    # getter for: Ljava/io/ObjectStreamClass;->externalizable:Z
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->access$1200(Ljava/io/ObjectStreamClass;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 503
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    # invokes: Ljava/io/ObjectStreamClass;->getExternalizableConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    invoke-static {v2}, Ljava/io/ObjectStreamClass;->access$1400(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    # setter for: Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;
    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->access$1302(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    goto :goto_cb

    .line 505
    :cond_78
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    # invokes: Ljava/io/ObjectStreamClass;->getSerializableConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    invoke-static {v2}, Ljava/io/ObjectStreamClass;->access$1500(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    # setter for: Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;
    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->access$1302(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    .line 506
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/io/ObjectOutputStream;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v7, "writeObject"

    # invokes: Ljava/io/ObjectStreamClass;->getPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {v2, v7, v4, v5}, Ljava/io/ObjectStreamClass;->access$1700(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    # setter for: Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;
    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->access$1602(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 509
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/io/ObjectInputStream;

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v7, "readObject"

    # invokes: Ljava/io/ObjectStreamClass;->getPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {v2, v7, v4, v5}, Ljava/io/ObjectStreamClass;->access$1700(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    # setter for: Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;
    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->access$1802(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 512
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v5, "readObjectNoData"

    # invokes: Ljava/io/ObjectStreamClass;->getPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {v2, v5, v1, v4}, Ljava/io/ObjectStreamClass;->access$1700(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    # setter for: Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;
    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->access$1902(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 514
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    # getter for: Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->access$1600(Ljava/io/ObjectStreamClass;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_c7

    goto :goto_c8

    :cond_c7
    move v3, v6

    :goto_c8
    # setter for: Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z
    invoke-static {v0, v3}, Ljava/io/ObjectStreamClass;->access$2002(Ljava/io/ObjectStreamClass;Z)Z

    .line 516
    :goto_cb
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    const-string v4, "writeReplace"

    # invokes: Ljava/io/ObjectStreamClass;->getInheritableMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {v2, v4, v1, v3}, Ljava/io/ObjectStreamClass;->access$2200(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    # setter for: Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;
    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->access$2102(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 518
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    const-string v4, "readResolve"

    # invokes: Ljava/io/ObjectStreamClass;->getInheritableMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {v2, v4, v1, v3}, Ljava/io/ObjectStreamClass;->access$2200(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    # setter for: Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;
    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->access$2302(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 520
    return-object v1
.end method
