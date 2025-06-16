.class public final synthetic Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/lee/myapplication/MainActivity;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/lee/myapplication/MainActivity;[Ljava/lang/String;Landroidx/appcompat/app/AlertDialog;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda6;->f$0:Lcom/lee/myapplication/MainActivity;

    iput-object p2, p0, Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda6;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda6;->f$2:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14

    .line 0
    iget-object v0, p0, Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda6;->f$0:Lcom/lee/myapplication/MainActivity;

    iget-object v1, p0, Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda6;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/lee/myapplication/MainActivity$$ExternalSyntheticLambda6;->f$2:Landroidx/appcompat/app/AlertDialog;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/lee/myapplication/MainActivity;->lambda$showCityInputDialog$5$com-lee-myapplication-MainActivity([Ljava/lang/String;Landroidx/appcompat/app/AlertDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
