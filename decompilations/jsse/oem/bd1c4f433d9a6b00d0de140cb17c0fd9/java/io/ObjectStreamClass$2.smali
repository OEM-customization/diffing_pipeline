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
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/io/ObjectStreamClass;

.field final synthetic val$cl:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/io/ObjectStreamClass;Ljava/lang/Class;)V
    .registers 3
    .param p1, "this$0"    # Ljava/io/ObjectStreamClass;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iput-object p2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 458
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$2;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 459
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    invoke-static {v3}, Ljava/io/ObjectStreamClass;->-get2(Ljava/io/ObjectStreamClass;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 460
    iget-object v1, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/io/ObjectStreamClass;->-set8(Ljava/io/ObjectStreamClass;Ljava/lang/Long;)Ljava/lang/Long;

    .line 461
    iget-object v1, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    sget-object v2, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    invoke-static {v1, v2}, Ljava/io/ObjectStreamClass;->-set2(Ljava/io/ObjectStreamClass;[Ljava/io/ObjectStreamField;)[Ljava/io/ObjectStreamField;

    .line 462
    return-object v8

    .line 464
    :cond_1e
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 465
    iget-object v1, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    sget-object v2, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    invoke-static {v1, v2}, Ljava/io/ObjectStreamClass;->-set2(Ljava/io/ObjectStreamClass;[Ljava/io/ObjectStreamField;)[Ljava/io/ObjectStreamField;

    .line 466
    return-object v8

    .line 469
    :cond_2e
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v4, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    invoke-static {v4}, Ljava/io/ObjectStreamClass;->-wrap1(Ljava/lang/Class;)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/io/ObjectStreamClass;->-set8(Ljava/io/ObjectStreamClass;Ljava/lang/Long;)Ljava/lang/Long;

    .line 471
    :try_start_39
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v4, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    invoke-static {v4}, Ljava/io/ObjectStreamClass;->-wrap0(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/io/ObjectStreamClass;->-set2(Ljava/io/ObjectStreamClass;[Ljava/io/ObjectStreamField;)[Ljava/io/ObjectStreamField;

    .line 472
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    invoke-static {v3}, Ljava/io/ObjectStreamClass;->-wrap9(Ljava/io/ObjectStreamClass;)V
    :try_end_49
    .catch Ljava/io/InvalidClassException; {:try_start_39 .. :try_end_49} :catch_7d

    .line 479
    :goto_49
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    invoke-static {v3}, Ljava/io/ObjectStreamClass;->-get1(Ljava/io/ObjectStreamClass;)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 480
    iget-object v1, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    invoke-static {v2}, Ljava/io/ObjectStreamClass;->-wrap4(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/io/ObjectStreamClass;->-set0(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    .line 493
    :goto_5c
    iget-object v1, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    .line 494
    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    const-string/jumbo v3, "writeReplace"

    const-class v4, Ljava/lang/Object;

    .line 493
    invoke-static {v2, v3, v8, v4}, Ljava/io/ObjectStreamClass;->-wrap6(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/io/ObjectStreamClass;->-set10(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 495
    iget-object v1, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    .line 496
    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    const-string/jumbo v3, "readResolve"

    const-class v4, Ljava/lang/Object;

    .line 495
    invoke-static {v2, v3, v8, v4}, Ljava/io/ObjectStreamClass;->-wrap6(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/io/ObjectStreamClass;->-set6(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 497
    return-object v8

    .line 473
    :catch_7d
    move-exception v0

    .line 474
    .local v0, "e":Ljava/io/InvalidClassException;
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v4, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    .line 475
    new-instance v5, Ljava/io/ObjectStreamClass$ExceptionInfo;

    iget-object v6, v0, Ljava/io/InvalidClassException;->classname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/InvalidClassException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-static {v4, v5}, Ljava/io/ObjectStreamClass;->-set1(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass$ExceptionInfo;)Ljava/io/ObjectStreamClass$ExceptionInfo;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/io/ObjectStreamClass;->-set7(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass$ExceptionInfo;)Ljava/io/ObjectStreamClass$ExceptionInfo;

    .line 476
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    sget-object v4, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    invoke-static {v3, v4}, Ljava/io/ObjectStreamClass;->-set2(Ljava/io/ObjectStreamClass;[Ljava/io/ObjectStreamField;)[Ljava/io/ObjectStreamField;

    goto :goto_49

    .line 482
    .end local v0    # "e":Ljava/io/InvalidClassException;
    :cond_9c
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v4, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    invoke-static {v4}, Ljava/io/ObjectStreamClass;->-wrap5(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/io/ObjectStreamClass;->-set0(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    .line 483
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v4, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    const-string/jumbo v5, "writeObject"

    .line 484
    new-array v6, v1, [Ljava/lang/Class;

    const-class v7, Ljava/io/ObjectOutputStream;

    aput-object v7, v6, v2

    .line 485
    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 483
    invoke-static {v4, v5, v6, v7}, Ljava/io/ObjectStreamClass;->-wrap7(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/io/ObjectStreamClass;->-set9(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 486
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v4, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    const-string/jumbo v5, "readObject"

    .line 487
    new-array v6, v1, [Ljava/lang/Class;

    const-class v7, Ljava/io/ObjectInputStream;

    aput-object v7, v6, v2

    .line 488
    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 486
    invoke-static {v4, v5, v6, v7}, Ljava/io/ObjectStreamClass;->-wrap7(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/io/ObjectStreamClass;->-set4(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 489
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    .line 490
    iget-object v4, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    const-string/jumbo v5, "readObjectNoData"

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 489
    invoke-static {v4, v5, v8, v6}, Ljava/io/ObjectStreamClass;->-wrap7(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/io/ObjectStreamClass;->-set5(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 491
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v4, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    invoke-static {v4}, Ljava/io/ObjectStreamClass;->-get3(Ljava/io/ObjectStreamClass;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_f2

    :goto_ed
    invoke-static {v3, v1}, Ljava/io/ObjectStreamClass;->-set3(Ljava/io/ObjectStreamClass;Z)Z

    goto/16 :goto_5c

    :cond_f2
    move v1, v2

    goto :goto_ed
.end method
