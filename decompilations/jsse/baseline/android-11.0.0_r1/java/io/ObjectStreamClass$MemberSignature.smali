.class Ljava/io/ObjectStreamClass$MemberSignature;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectStreamClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemberSignature"
.end annotation


# instance fields
.field public final greylist-max-o member:Ljava/lang/reflect/Member;

.field public final greylist-max-o name:Ljava/lang/String;

.field public final greylist-max-o signature:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/reflect/Constructor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)V"
        }
    .end annotation

    .line 1964
    .local p1, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1965
    iput-object p1, p0, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    .line 1966
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    .line 1967
    nop

    .line 1968
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 1967
    # invokes: Ljava/io/ObjectStreamClass;->getMethodSignature([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    invoke-static {v0, v1}, Ljava/io/ObjectStreamClass;->access$2500([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    .line 1969
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/reflect/Field;)V
    .registers 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 1958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1959
    iput-object p1, p0, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    .line 1960
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    .line 1961
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    # invokes: Ljava/io/ObjectStreamClass;->getClassSignature(Ljava/lang/Class;)Ljava/lang/String;
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->access$2400(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    .line 1962
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/reflect/Method;)V
    .registers 4
    .param p1, "meth"    # Ljava/lang/reflect/Method;

    .line 1971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1972
    iput-object p1, p0, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    .line 1973
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    .line 1974
    nop

    .line 1975
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 1974
    # invokes: Ljava/io/ObjectStreamClass;->getMethodSignature([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    invoke-static {v0, v1}, Ljava/io/ObjectStreamClass;->access$2500([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    .line 1976
    return-void
.end method
