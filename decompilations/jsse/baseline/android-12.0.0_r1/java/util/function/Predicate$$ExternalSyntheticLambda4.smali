.class public final synthetic Ljava/util/function/Predicate$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/function/Predicate$$ExternalSyntheticLambda4;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/function/Predicate$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Ljava/util/function/Predicate$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Ljava/util/function/Predicate$$ExternalSyntheticLambda4;->INSTANCE:Ljava/util/function/Predicate$$ExternalSyntheticLambda4;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
