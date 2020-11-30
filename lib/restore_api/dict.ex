defmodule RestoreApi.Dict do
  @moduledoc """
  The Dict context.
  """

  import Ecto.Query, warn: false
  alias RestoreApi.Repo

  alias RestoreApi.Dict.Projects

  @doc """
  Returns the list of projects.

  ## Examples

      iex> list_projects()
      [%Projects{}, ...]

  """
  def list_projects do
    Repo.all(Projects)
  end

  @doc """
  Gets a single projects.

  Raises `Ecto.NoResultsError` if the Projects does not exist.

  ## Examples

      iex> get_projects!(123)
      %Projects{}

      iex> get_projects!(456)
      ** (Ecto.NoResultsError)

  """
  def get_projects!(id), do: Repo.get!(Projects, id)

  @doc """
  Creates a projects.

  ## Examples

      iex> create_projects(%{field: value})
      {:ok, %Projects{}}

      iex> create_projects(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_projects(attrs \\ %{}) do
    %Projects{}
    |> Projects.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a projects.

  ## Examples

      iex> update_projects(projects, %{field: new_value})
      {:ok, %Projects{}}

      iex> update_projects(projects, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_projects(%Projects{} = projects, attrs) do
    projects
    |> Projects.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a projects.

  ## Examples

      iex> delete_projects(projects)
      {:ok, %Projects{}}

      iex> delete_projects(projects)
      {:error, %Ecto.Changeset{}}

  """
  def delete_projects(%Projects{} = projects) do
    Repo.delete(projects)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking projects changes.

  ## Examples

      iex> change_projects(projects)
      %Ecto.Changeset{data: %Projects{}}

  """
  def change_projects(%Projects{} = projects, attrs \\ %{}) do
    Projects.changeset(projects, attrs)
  end

  alias RestoreApi.Dict.Environments

  @doc """
  Returns the list of environments.

  ## Examples

      iex> list_environments()
      [%Environments{}, ...]

  """
  def list_environments do
    Repo.all(Environments)
  end

  @doc """
  Gets a single environments.

  Raises `Ecto.NoResultsError` if the Environments does not exist.

  ## Examples

      iex> get_environments!(123)
      %Environments{}

      iex> get_environments!(456)
      ** (Ecto.NoResultsError)

  """
  def get_environments!(id), do: Repo.get!(Environments, id)

  @doc """
  Creates a environments.

  ## Examples

      iex> create_environments(%{field: value})
      {:ok, %Environments{}}

      iex> create_environments(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_environments(attrs \\ %{}) do
    %Environments{}
    |> Environments.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a environments.

  ## Examples

      iex> update_environments(environments, %{field: new_value})
      {:ok, %Environments{}}

      iex> update_environments(environments, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_environments(%Environments{} = environments, attrs) do
    environments
    |> Environments.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a environments.

  ## Examples

      iex> delete_environments(environments)
      {:ok, %Environments{}}

      iex> delete_environments(environments)
      {:error, %Ecto.Changeset{}}

  """
  def delete_environments(%Environments{} = environments) do
    Repo.delete(environments)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking environments changes.

  ## Examples

      iex> change_environments(environments)
      %Ecto.Changeset{data: %Environments{}}

  """
  def change_environments(%Environments{} = environments, attrs \\ %{}) do
    Environments.changeset(environments, attrs)
  end

  alias RestoreApi.Dict.Instances

  @doc """
  Returns the list of instances.

  ## Examples

      iex> list_instances()
      [%Instances{}, ...]

  """
  def list_instances do
    Repo.all(Instances)
  end

  @doc """
  Gets a single instances.

  Raises `Ecto.NoResultsError` if the Instances does not exist.

  ## Examples

      iex> get_instances!(123)
      %Instances{}

      iex> get_instances!(456)
      ** (Ecto.NoResultsError)

  """
  def get_instances!(id), do: Repo.get!(Instances, id)

  @doc """
  Creates a instances.

  ## Examples

      iex> create_instances(%{field: value})
      {:ok, %Instances{}}

      iex> create_instances(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_instances(attrs \\ %{}) do
    %Instances{}
    |> Instances.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a instances.

  ## Examples

      iex> update_instances(instances, %{field: new_value})
      {:ok, %Instances{}}

      iex> update_instances(instances, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_instances(%Instances{} = instances, attrs) do
    instances
    |> Instances.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a instances.

  ## Examples

      iex> delete_instances(instances)
      {:ok, %Instances{}}

      iex> delete_instances(instances)
      {:error, %Ecto.Changeset{}}

  """
  def delete_instances(%Instances{} = instances) do
    Repo.delete(instances)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking instances changes.

  ## Examples

      iex> change_instances(instances)
      %Ecto.Changeset{data: %Instances{}}

  """
  def change_instances(%Instances{} = instances, attrs \\ %{}) do
    Instances.changeset(instances, attrs)
  end

  alias RestoreApi.Dict.Databases

  @doc """
  Returns the list of databases.

  ## Examples

      iex> list_databases()
      [%Databases{}, ...]

  """
  def list_databases do
    Repo.all(Databases)
  end

  @doc """
  Gets a single databases.

  Raises `Ecto.NoResultsError` if the Databases does not exist.

  ## Examples

      iex> get_databases!(123)
      %Databases{}

      iex> get_databases!(456)
      ** (Ecto.NoResultsError)

  """
  def get_databases!(id), do: Repo.get!(Databases, id)

  @doc """
  Creates a databases.

  ## Examples

      iex> create_databases(%{field: value})
      {:ok, %Databases{}}

      iex> create_databases(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_databases(attrs \\ %{}) do
    %Databases{}
    |> Databases.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a databases.

  ## Examples

      iex> update_databases(databases, %{field: new_value})
      {:ok, %Databases{}}

      iex> update_databases(databases, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_databases(%Databases{} = databases, attrs) do
    databases
    |> Databases.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a databases.

  ## Examples

      iex> delete_databases(databases)
      {:ok, %Databases{}}

      iex> delete_databases(databases)
      {:error, %Ecto.Changeset{}}

  """
  def delete_databases(%Databases{} = databases) do
    Repo.delete(databases)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking databases changes.

  ## Examples

      iex> change_databases(databases)
      %Ecto.Changeset{data: %Databases{}}

  """
  def change_databases(%Databases{} = databases, attrs \\ %{}) do
    Databases.changeset(databases, attrs)
  end
end
