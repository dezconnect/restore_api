defmodule RestoreApi.RestoreTypes do

  def get() do 
    [
      %{type: :restore_from_file, title: "Restore PostgreSQL from share file"},
      %{type: :restore_via_pgdump, title: "Restore database via pg_dump 'src -> dst'"},
      %{type: :restore_via_pgdumpall, title: "Restore databases via pg_dumpall 'src -> dst'"},
      %{type: :restore_from_barman, title: "Restore from barman backup"},
      %{type: :restore_from_template, title: "Restore from PostgreSQL template"}
    ]
  end
end
