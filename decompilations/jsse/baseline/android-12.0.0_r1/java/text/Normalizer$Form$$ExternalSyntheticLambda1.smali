.class public final synthetic Ljava/text/Normalizer$Form$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/text/Normalizer$Form$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/text/Normalizer$Form$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/text/Normalizer$Form$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Ljava/text/Normalizer$Form$$ExternalSyntheticLambda1;->INSTANCE:Ljava/text/Normalizer$Form$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFDInstance()Landroid/icu/text/Normalizer2;

    move-result-object v0

    return-object v0
.end method