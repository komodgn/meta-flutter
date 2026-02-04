import 'package:flutter/material.dart';
import 'package:presentation/providers/person/person_provider.dart';
import 'package:provider/provider.dart';

class PersonScreen extends StatelessWidget {
  const PersonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final personProvider = context.watch<PersonProvider>();
    final people = personProvider.allPersons;

    return Scaffold(
      appBar: AppBar(title: const Text('PERSON')),
      body: people.isEmpty
          ? const Center(child: Text('No people analyzed.'))
          : GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.8,
              ),
              itemCount: people.length,
              itemBuilder: (context, index) {
                final person = people[index];
                return Column(
                  children: [
                    Expanded(
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: person.representativeFace != null
                            ? MemoryImage(person.representativeFace!.imageData)
                            : null,
                        child: person.representativeFace == null
                            ? const Icon(Icons.person, size: 40)
                            : null,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      person.inputName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'Count ${person.photoCount}',
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                );
              },
            ),
    );
  }
}
